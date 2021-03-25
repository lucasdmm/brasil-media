import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool play = false;

  anime() {
    Future.delayed(Duration(milliseconds: 400)).whenComplete(() => play = true);
  }

  @override
  Widget build(BuildContext context) {
    anime();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      child: Stack(children: [
        Image.asset(
          'assets/universe.jpeg',
          fit: BoxFit.cover,
          height: height,
          width: width,
        ),
        Container(
          height: 300,
          alignment: Alignment.center,
          child: AnimatedOpacity(
            curve: Curves.decelerate,
            duration: Duration(milliseconds: 1000),
            opacity: play ? 1 : 0,
            child: ClipOval(
                child: Image.asset(
              'assets/brasilparalelo.png',
            )),
          ),
        ),
      ]),
    );
  }
}
