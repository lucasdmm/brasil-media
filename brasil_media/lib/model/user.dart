import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  final String name;
  final String email;
  final String password;
  final String profileImage;
  final bool premium;
  final bool patriota;

  User(
      {this.name,
      this.profileImage,
      this.email,
      this.password,
      this.premium = false,
      this.patriota = false});
  User.fromjson(Map<dynamic, dynamic> json)
      : name = json['name'],
        profileImage = json['profileImage'],
        email = json['email'],
        password = json['passsword'],
        premium = json['premium'],
        patriota = json['patriota'];
  Map toJson() {
    return {
      "name": this.name,
      "profileImage": this.profileImage,
      "email": this.email,
      "password": this.password,
      "premium": this.premium,
      "patriota": this.patriota
    };
  }
}
