// ignore_for_file: avoid_positional_boolean_parameters, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'pet_model.g.dart';

@JsonSerializable()
class PetModel {
  PetModel(
    this.petName,
    this.petBreed,
    this.petAge,
    this.petWeight,
    this.petLocation,
    this.petUri,
    this.vaccinated,
    this.tutorName,
    this.tutorUri,
  );

  final String petName;
  final String petBreed;
  final int petAge;
  final double petWeight;
  final String petLocation;
  final String petUri;
  final bool vaccinated;
  final String? tutorName;
  final String? tutorUri;

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PetModelToJson(this);
}
