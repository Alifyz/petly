import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';
import 'package:pet_project/repository/pets_repository.dart';

part 'pet_list_state.dart';

class PetListCubit extends Cubit<PetListState> {
  PetListCubit() : super(PetListInitial());

  final repository = PetsRepository();

  Future<void> queryPets(String? petType) async {
    try {
      emit(PetListLoading());
      final queryType = petType ?? 'Dogs';
      final pets = await repository.queryPetsByType(queryType);

      emit(PetListSuccess(pets));
    } catch (exception) {
      emit(PetListFailure());
    }
  }
}
