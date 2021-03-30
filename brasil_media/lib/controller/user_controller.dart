import 'dart:convert';

import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/model/user.dart';
import 'package:flutter/material.dart';

class UserController extends ChangeNotifier {
  List<User> list = [];

  User userSinged =
      User(email: "", name: "", password: "", patriota: false, premium: false);

  generateMockList(BuildContext context) async {
    Map<String, dynamic> dataJson = json.decode(
        await DefaultAssetBundle.of(context).loadString(Config.dataBase));
    list = dataJson['docs'].map<User>((map) {
      return User.fromJson(map);
    }).toList();
    notifyListeners();
  }

  validate({String email, String password}) {
    try {
      userSinged = list.firstWhere(
          (user) => user.email == email && user.password == password);
    } catch (e) {
      return 'Usuário não cadastrado';
    } finally {
      notifyListeners();
    }
  }
}
