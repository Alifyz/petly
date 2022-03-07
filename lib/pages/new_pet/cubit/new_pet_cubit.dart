import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'new_pet_state.dart';

class NewPetCubit extends Cubit<NewPetState> {
  NewPetCubit() : super(NewPetInitial());
}
