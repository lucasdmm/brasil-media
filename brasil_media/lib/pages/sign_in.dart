import 'package:brasil_media/helper/config.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white24,
                margin: EdgeInsets.all(20),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    radius: 80,
                    child: Hero(
                      tag: 'SignIn',
                      child: Icon(Icons.account_circle, size: 150),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
