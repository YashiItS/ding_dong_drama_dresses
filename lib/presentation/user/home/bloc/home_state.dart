import '../../../../data/models/category_model.dart';
import '../../../../data/models/product_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
   HomeLoaded();
}
