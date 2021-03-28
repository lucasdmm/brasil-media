import 'package:flutter/material.dart';

class Containers {
  List<Container> list() {
    List<Container> list = [];

    list.add(Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(''))),
    ));

    return list;
  }
}
