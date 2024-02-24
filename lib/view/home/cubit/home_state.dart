part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class LoadingHome extends HomeState {}

final class SuccessHome extends HomeState {
  final HomeResponseWrapper homeResponseWrapper;
  SuccessHome(this.homeResponseWrapper);
}

final class FailureHome extends HomeState {
  String error;
  FailureHome(this.error);
}
