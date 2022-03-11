import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pet_project/pages/new_pet/model/new_pet_model.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';
import 'package:pet_project/repository/pets_repository.dart';
import 'package:pet_project/repository/storage_repository.dart';
import 'package:pet_project/repository/user_repository.dart';

part 'new_pet_state.dart';

class NewPetCubit extends Cubit<NewPetState> {
  NewPetCubit() : super(NewPetInitial());

  final storageRepository = StorageRepository();
  final userRepository = UserRepository();
  final petsRepository = PetsRepository();

  Future<void> addNewPet(NewPetModel newPet) async {
    try {
      emit(NewPetLoading());
      if (newPet.petFile != null) {
        final displayUrl = await storageRepository.upload(newPet.petFile!);
        final user = await userRepository.getCurrentUser();

        final pet = PetModel(
          newPet.petName,
          newPet.petBreed,
          newPet.petAge,
          newPet.petWeight,
          newPet.petLocation,
          displayUrl,
          newPet.vaccinated,
          user?.displayName,
          user?.photoURL,
          user?.email,
        );

        await petsRepository.savePet(pet);
        emit(NewPetSuccess());
      } else {
        emit(NewPetFailure());
      }
    } catch (exception) {
      emit(NewPetFailure());
    }
  }
}
