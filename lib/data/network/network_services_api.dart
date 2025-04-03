import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:ding_dong_drama_dresses/data/exceptions/app_exceptions.dart';
import 'package:ding_dong_drama_dresses/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices{

  @override
  Future<dynamic> getApi(String url) async {

    dynamic jsonResponse;

    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 55));

      jsonResponse = returnResponse(response);

      if(response.statusCode == 200){}
    }on SocketException{
      return NoInternetException('');
    }on TimeoutException{
      return RequestTimeoutException('Time out try again later');
    }

    return jsonResponse;
  }


  @override
  Future<dynamic> postApi(String url, data) async {

    dynamic jsonResponse;

    try{
      final response = await http.post(Uri.parse(url), body: data).timeout(Duration(seconds: 55));

      jsonResponse = returnResponse(response);

      if(response.statusCode == 200){}
    }on SocketException{
      return NoInternetException('');
    }on TimeoutException{
      return RequestTimeoutException('Time out try again later');
    }

    return jsonResponse;
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 401:
        throw UnAuthorizedException('');

      case 500:
        throw FetchDataException('Internal Server Error');

      default:
        throw FetchDataException('Error occurred while communicating with server with status code ${response.statusCode}');
    }
  }
}