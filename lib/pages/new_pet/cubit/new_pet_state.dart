part of 'new_pet_cubit.dart';

@immutable
abstract class NewPetState {}

class NewPetInitial extends NewPetState {}

class NewPetSuccess extends NewPetState {}

class NewPetFailure extends NewPetState {}

class NewPetLoading extends NewPetState {}
