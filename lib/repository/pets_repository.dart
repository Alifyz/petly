import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pet_project/pages/new_pet/model/pet_model.dart';

class PetsRepository {
  Future<DocumentReference<Map<String, dynamic>>> savePet(PetModel pet) {
    return FirebaseFirestore.instance.collection('pets').add(
          pet.toJson(),
        );
  }

  Future<List<PetModel>> queryPets() async {
    const pets = <PetModel>[];
    final data = await FirebaseFirestore.instance.collection('pets').get();
    for (final rawData in data.docs) {
      final pet = PetModel.fromJson(rawData.data());
      pets.add(pet);
    }
    return pets;
  }
}
