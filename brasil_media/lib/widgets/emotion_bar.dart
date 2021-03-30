import 'package:brasil_media/controller/doc_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class EmotionBar extends StatefulWidget {
  EmotionBar({this.id});
  final int id;
  @override
  _EmotionBarState createState() => _EmotionBarState();
}

class _EmotionBarState extends State<EmotionBar> {
  @override
  Widget build(BuildContext context) {
    final doc = Provider.of<DocController>(context)
        .list
        .firstWhere((doc) => doc.id == widget.id);
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
                onTap: () {
                  doc.isLike
                      ? setState(() {
                          doc.like(true);
                          doc.adLike(1);
                        })
                      : setState(() => doc.like(false));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Icon(
                    doc.isLike
                        ? CupertinoIcons.hand_thumbsup_fill
                        : CupertinoIcons.hand_thumbsup,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  child: Icon(
                    doc.isLove
                        ? CupertinoIcons.heart_solid
                        : CupertinoIcons.heart,
                    color: Colors.redAccent,
                  ),
                ),
                onTap: () => doc.love(),
              ),
              GestureDetector(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: FaIcon(
                      doc.isSurprise
                          ? FontAwesomeIcons.solidSurprise
                          : FontAwesomeIcons.surprise,
                      color: Colors.amber,
                    )),
                onTap: () => doc.surprise(),
              ),
              GestureDetector(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: FaIcon(
                        doc.isAngry
                            ? FontAwesomeIcons.solidAngry
                            : FontAwesomeIcons.angry,
                        color: Colors.red[600])),
                onTap: () => doc.angry(),
              ),
              GestureDetector(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: FaIcon(
                      doc.isCry
                          ? FontAwesomeIcons.solidSadCry
                          : FontAwesomeIcons.sadCry,
                      color: Colors.blue[900],
                    )),
                onTap: () => doc.cry(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
