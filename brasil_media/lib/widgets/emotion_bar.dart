import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/model/documentary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmotionBar extends StatefulWidget {
  EmotionBar({@required this.doc});
  final Documentary doc;
  @override
  _EmotionBarState createState() => _EmotionBarState();
}

class _EmotionBarState extends State<EmotionBar> {
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
              color: Colors.white30,
              boxShadow: [
                BoxShadow(color: Colors.black38, offset: Offset(2, 3))
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
                  message: 'Likes ${widget.doc.numbLike}',
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(
                      widget.doc.isLike
                          ? CupertinoIcons.hand_thumbsup_fill
                          : CupertinoIcons.hand_thumbsup,
                      color: Colors.blue[900],
                    ),
                  ),
                ),
                onTap: () => setState(() => widget.doc.like()),
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Amei ${widget.doc.numbLove}',
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(
                      widget.doc.isLove
                          ? CupertinoIcons.heart_solid
                          : CupertinoIcons.heart,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                onTap: () => setState(() => widget.doc.love()),
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Surpreso ${widget.doc.numbSurprise}',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(
                        widget.doc.isSurprise
                            ? FontAwesomeIcons.solidSurprise
                            : FontAwesomeIcons.surprise,
                        color: Colors.amber,
                      )),
                ),
                onTap: () => setState(() => widget.doc.surprise()),
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Raivoso ${widget.doc.numbAngry}',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(
                          widget.doc.isAngry
                              ? FontAwesomeIcons.solidAngry
                              : FontAwesomeIcons.angry,
                          color: Colors.red[600])),
                ),
                onTap: () => setState(() => widget.doc.angry()),
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Triste ${widget.doc.numbCry}',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(
                        widget.doc.isCry
                            ? FontAwesomeIcons.solidSadCry
                            : FontAwesomeIcons.sadCry,
                        color: Colors.blue[900],
                      )),
                ),
                onTap: () => setState(() => widget.doc.cry()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
