import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  bool plus = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(30),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white24,
        margin: EdgeInsets.all(20),
        child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width / 2,
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () async {
                setState(() => plus = true);
                Future.delayed(Duration(milliseconds: 200))
                    .whenComplete(() => setState(() => plus = false));
              },
              child: Stack(children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    radius: 80,
                    child: Hero(
                      tag: 'SignIn',
                      child: Icon(Icons.account_circle, size: 150),
                    )),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 200),
                    padding: EdgeInsets.all(plus ? 0 : 5),
                    child: Material(
                      elevation: 8,
                      color: Colors.white,
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.green, width: 2)),
                      child: FaIcon(
                        FontAwesomeIcons.plusCircle,
                        color: Colors.green[200],
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ]),
            )),
      ),
    );
  }
}
