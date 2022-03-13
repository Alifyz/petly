part of 'pet_list_cubit.dart';

@immutable
abstract class PetListState {}

class PetListInitial extends PetListState {}

class PetListLoading extends PetListState {}

class PetListSuccess extends PetListState {
  PetListSuccess(this.pets);

  final List<PetModel> pets;
}

class PetListFailure extends PetListState {}
