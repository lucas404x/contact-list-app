import 'package:flutter/material.dart';

class ContactModel {
  int id;
  String number;
  String photo;
  String email;
  String name;

  ContactModel(
      {@required this.id,
      @required this.number,
      this.photo,
      this.email,
      this.name});

  factory ContactModel.fromMap(Map data) => ContactModel(
      id: data["id"],
      number: data["phone"],
      name: data["name"],
      email: data["email"],
      photo: data["photo"]);

  Map<String, dynamic> toMap() => {
        'id': this.id,
        'number': this.number,
        'name': this.name,
        'email': this.email,
        'photo': this.photo
      };
}
