import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pet_project/pages/new_pet/model/new_pet_model.dart';

part 'new_pet_state.dart';

class NewPetCubit extends Cubit<NewPetState> {
  NewPetCubit() : super(NewPetInitial());

  void addNewPet(NewPetModel newPet) {
    print(newPet);
  }
}
