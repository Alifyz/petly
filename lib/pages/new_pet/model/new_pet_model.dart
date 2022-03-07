import 'dart:io';

class NewPetModel {
  NewPetModel(
    this.petName,
    this.petBreed,
    this.petAge,
    this.petWeight,
    this.petLocation,
    this.tutor,
    this.petFile,
  );

  final String petName;
  final String petBreed;
  final int petAge;
  final double petWeight;
  final String petLocation;
  final PetTutor tutor;
  final File petFile;
}

class PetTutor {
  PetTutor(
    this.displayName,
    this.profileUri,
    this.email,
  );

  final String displayName;
  final String profileUri;
  final String email;
}
