import 'package:brasil_media/controller/doc_controller.dart';
import 'package:brasil_media/controller/user_controller.dart';
import 'package:brasil_media/helper/config.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DocController>.value(value: DocController()),
        ChangeNotifierProvider<UserController>.value(value: UserController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Midia Brasil',
        theme: ThemeData(
            primaryColor: Colors.black,
            tooltipTheme: TooltipThemeData(
                textStyle: Config.toolip,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey))),
        home: Splashscreen(),
      ),
    );
  }
}
