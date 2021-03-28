import 'package:brasil_media/widgets/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Midia Brasil',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Splashscreen(),
    );
  }
}
