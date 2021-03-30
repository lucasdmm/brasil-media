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
      this.premium,
      this.patriota});
}
