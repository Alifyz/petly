// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:io';

class NewPetModel {
  NewPetModel(
    this.petName,
    this.petBreed,
    this.petAge,
    this.petWeight,
    this.petLocation,
    this.petFile,
    this.vaccinated,
  );

  final String petName;
  final String petBreed;
  final int petAge;
  final double petWeight;
  final String petLocation;
  final File? petFile;
  final bool vaccinated;
}
