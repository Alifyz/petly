import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';

class PetsRepository {
  void savePet(PetModel pet) {
    final petsCollection = FirebaseFirestore.instance.collection('pets').add(
          pet.toJson(),
        );
  }
}
