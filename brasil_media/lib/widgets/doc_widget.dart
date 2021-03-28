import 'package:brasil_media/helper/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          Row(
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
                        decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(10)),
                        message: 'Amei $numberLikes',
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            child: FaIcon(FontAwesomeIcons.surprise)),
                      ),
                      onTap: () {
                        setState(() => love = !love);
                      },
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
