import 'package:brasil_media/controller/doc_controller.dart';
import 'package:brasil_media/data/mock_data.dart';
import 'package:brasil_media/widgets/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MockData().generate();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DocController>.value(value: DocController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Midia Brasil',
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: Splashscreen(),
      ),
    );
  }
}
