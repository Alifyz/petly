import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';

class PetsRepository {
  Future<DocumentReference<Map<String, dynamic>>> savePet(PetModel pet) {
    return FirebaseFirestore.instance.collection('pets').add(
          pet.toJson(),
        );
  }
}
