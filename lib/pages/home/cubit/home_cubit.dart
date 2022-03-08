import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';
import 'package:pet_project/repository/pets_repository.dart';
import 'package:pet_project/repository/user_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final petsRepository = PetsRepository();
  final userRepository = UserRepository();

  Future<void> queryPets() async {
    try {
      emit(HomeLoading());
      final pets = await petsRepository.queryPets();
      final user = await userRepository.getCurrentUser();
      emit(HomeSuccessful(user!, pets));
    } catch (exception) {
      emit(HomeFailure());
    }
  }
}
