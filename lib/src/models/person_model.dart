import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'person_model.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
);

@firestoreSerializable
class PersonModel {
  PersonModel({
    required this.firstName,
    required this.lastName,
    required this.birthYear,
    required this.email,
    required this.token,
    required this.phone, 
  }) {
    _$assertPersonModel(this);
  }

  factory PersonModel.fromJson(Map<String, Object?> json) =>
      _$PersonModelFromJson(json);

  final String firstName;
  final String lastName;

  @Min(1920)
  final int birthYear;

  final String email;
  final String token;
  final String phone;

  Map<String, Object?> toJson() => _$PersonModelToJson(this);
}

@Collection<PersonModel>('persons')
final personModelRef = PersonModelCollectionReference();
