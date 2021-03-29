import 'package:brasil_media/data/mock_data.dart';
import 'package:brasil_media/model/documentary.dart';
import 'package:flutter/material.dart';

class DocController extends ChangeNotifier {
  List<Documentary> list = MockData().generate();

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
