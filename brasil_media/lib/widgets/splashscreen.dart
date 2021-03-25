import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:brasil_media/widgets/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool play = true;
  @override
  void initState() {
    super.initState();
    anime();
  }

  anime() {
    Future.delayed(Duration(milliseconds: 400))
        .whenComplete(() => setState(() => play = false));
    Future.delayed(Duration(seconds: 4)).whenComplete(() =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Home())));
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
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              height: 300,
              alignment: Alignment.center,
              child: AnimatedOpacity(
                curve: Curves.decelerate,
                duration: Duration(milliseconds: 1000),
                opacity: play ? 0 : 1,
                child: ClipOval(
                    child: Image.asset(
                  'assets/brasilparalelo.png',
                )),
              ),
            ),
            SizedBox(height: 20),
            DefaultTextStyle(
              style: GoogleFonts.armata(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [TyperAnimatedText('Brasil Paralelo')]),
            )
          ],
        ),
      ]),
    );
  }
}
