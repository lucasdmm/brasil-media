import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/widgets/profile_widget.dart';
import 'package:brasil_media/widgets/sign_in_form_widget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool plus = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          Config.universe,
          fit: BoxFit.fitHeight,
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ProfileWidget(), SignInFormWidget()],
        ),
      )
    ]);
  }
}
