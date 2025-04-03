class AppExceptions implements Exception{

  final _message;
  final _prefix;

  AppExceptions(this._message, this._prefix);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class NoInternetException extends AppExceptions {
  NoInternetException(String? message) : super(message, "No Internet Connection");

}

class UnAuthorizedException extends AppExceptions {
  UnAuthorizedException(String? message) : super(message, "You don't have access to this");
}

class RequestTimeoutException extends AppExceptions{
  RequestTimeoutException(String? message) : super(message, "Request Timeout");
}

class FetchDataException extends AppExceptions{
  FetchDataException(String? message) : super(message, "");

}