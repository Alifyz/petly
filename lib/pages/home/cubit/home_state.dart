part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccessful extends HomeState {
  HomeSuccessful(
    this.user,
    this.pets,
  );

  final User user;
  final List<PetModel> pets;
}

class HomeFailure extends HomeState {}
