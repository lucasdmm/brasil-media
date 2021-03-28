import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/widgets/emotion_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocWidget extends StatefulWidget {
  const DocWidget({
    Key key,
  }) : super(key: key);

  @override
  _DocWidgetState createState() => _DocWidgetState();
}

class _DocWidgetState extends State<DocWidget> {
  bool like = false;
  bool love = false;
  bool surprise = false;
  int numberLikes;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.green[300], borderRadius: BorderRadius.circular(20)),
      height: 250,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 180,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.grey[300], offset: Offset(3, 2))
                ], borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    Config.bp,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  child: Column(children: [
                    Container(
                        width: 190,
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text('Brasil Paralelo'))),
                    Container(
                        width: 190,
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text('What is Lorem Ipsum ?'))),
                    Container(
                      width: 190,
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 7,
                      ),
                    ),
                  ])),
            ],
          ),
          EmotionBar()
        ],
      ),
    );
  }
}
