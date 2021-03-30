import 'dart:convert';

import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/model/documentary.dart';
import 'package:flutter/material.dart';

class DocController extends ChangeNotifier {
  List<Documentary> list = [];
  generateMockList(BuildContext context) async {
    Map<String, dynamic> dataJson = json.decode(
        await DefaultAssetBundle.of(context).loadString(Config.dataBase));
    list = dataJson['docs'].map<Documentary>((map) {
      return Documentary.fromJson(map);
    }).toList();
    notifyListeners();
  }
  //  MockData().generate();

  addDoc(Documentary doc) {
    list.add(doc);
  }

  removeDoc(Documentary doc) {
    if (list.contains(doc)) {
      list.remove(doc);
      notifyListeners();
    }
  }

  clearDocs() {
    if (list.isNotEmpty) {
      list.clear();
      notifyListeners();
    }
  }
}
