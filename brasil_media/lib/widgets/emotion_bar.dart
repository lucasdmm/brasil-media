import 'package:brasil_media/controller/doc_controller.dart';
import 'package:brasil_media/helper/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class EmotionBar extends StatefulWidget {
  EmotionBar({@required this.index});
  final int index;
  @override
  _EmotionBarState createState() => _EmotionBarState();
}

class _EmotionBarState extends State<EmotionBar> {
  @override
  Widget build(BuildContext context) {
    final doc = Provider.of<DocController>(context).list[widget.index];
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
                  message: 'likes ${doc.numbLike}',
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(doc.isLike
                        ? CupertinoIcons.hand_thumbsup_fill
                        : CupertinoIcons.hand_thumbsup),
                  ),
                ),
                onTap: () => setState(() => doc.like()),
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Amei ${doc.numbLove}',
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Icon(doc.isLove
                        ? CupertinoIcons.heart_solid
                        : CupertinoIcons.heart),
                  ),
                ),
                onTap: () => setState(() => doc.love()),
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Surpreso ${doc.numbSurprise}',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(doc.isSurprise
                          ? FontAwesomeIcons.solidSurprise
                          : FontAwesomeIcons.surprise)),
                ),
                onTap: () => setState(() => doc.surprise()),
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Raivoso ${doc.numbAngry}',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(doc.isAngry
                          ? FontAwesomeIcons.solidAngry
                          : FontAwesomeIcons.angry)),
                ),
                onTap: () => setState(() => doc.angry()),
              ),
              GestureDetector(
                child: Tooltip(
                  height: 50,
                  preferBelow: false,
                  textStyle: Config.toolip,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10)),
                  message: 'Triste ${doc.numbCry}',
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: FaIcon(doc.isCry
                          ? FontAwesomeIcons.solidSadCry
                          : FontAwesomeIcons.sadCry)),
                ),
                onTap: () => setState(() => doc.cry()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
