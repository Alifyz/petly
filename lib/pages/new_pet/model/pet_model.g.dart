// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetModel _$PetModelFromJson(Map<String, dynamic> json) => PetModel(
      json['petName'] as String,
      json['petBreed'] as String,
      json['petAge'] as int,
      (json['petWeight'] as num).toDouble(),
      json['petLocation'] as String,
      json['petUri'] as String,
      json['vaccinated'] as bool,
      json['tutorName'] as String?,
      json['tutorUri'] as String?,
    );

Map<String, dynamic> _$PetModelToJson(PetModel instance) => <String, dynamic>{
      'petName': instance.petName,
      'petBreed': instance.petBreed,
      'petAge': instance.petAge,
      'petWeight': instance.petWeight,
      'petLocation': instance.petLocation,
      'petUri': instance.petUri,
      'vaccinated': instance.vaccinated,
      'tutorName': instance.tutorName,
      'tutorUri': instance.tutorUri,
    };
