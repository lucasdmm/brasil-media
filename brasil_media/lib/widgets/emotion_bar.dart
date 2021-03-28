import 'package:brasil_media/helper/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmotionBar extends StatefulWidget {
  @override
  _EmotionBarState createState() => _EmotionBarState();
}

class _EmotionBarState extends State<EmotionBar> {
  bool like = false;
  bool love = false;
  bool surprise = false;
  bool angry = false;
  bool cry = false;
  int numberLikes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.all(4),
          width: 200,
          decoration: BoxDecoration(
              color: Colors.blue[300],
              boxShadow: [
                BoxShadow(color: Colors.black54, offset: Offset(2, 3))
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onLongPress: () {},
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'likes $numberLikes',
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(like
                        ? CupertinoIcons.hand_thumbsup_fill
                        : CupertinoIcons.hand_thumbsup),
                  ),
                ),
                onTap: () {
                  setState(() => like = !like);
                },
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Amei $numberLikes',
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(love
                        ? CupertinoIcons.heart_solid
                        : CupertinoIcons.heart),
                  ),
                ),
                onTap: () {
                  setState(() => love = !love);
                },
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Surpreso $numberLikes',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(surprise
                          ? FontAwesomeIcons.surprise
                          : FontAwesomeIcons.solidSurprise)),
                ),
                onTap: () {
                  setState(() => surprise = !surprise);
                },
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Raivoso $numberLikes',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(angry
                          ? FontAwesomeIcons.angry
                          : FontAwesomeIcons.solidAngry)),
                ),
                onTap: () {
                  setState(() => angry = !angry);
                },
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Triste $numberLikes',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(cry
                          ? FontAwesomeIcons.sadCry
                          : FontAwesomeIcons.solidSadCry)),
                ),
                onTap: () {
                  setState(() => cry = !cry);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
