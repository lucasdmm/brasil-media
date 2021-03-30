import 'package:brasil_media/model/documentary.dart';
import 'package:brasil_media/widgets/emotion_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocWidget extends StatefulWidget {
  const DocWidget({Key key, this.doc}) : super(key: key);
  final Documentary doc;
  @override
  _DocWidgetState createState() => _DocWidgetState();
}

class _DocWidgetState extends State<DocWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(20)),
      height: 250,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Hero(
                tag: widget.doc,
                child: Container(
                  width: 180,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.grey[300], offset: Offset(3, 2))
                  ], borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.doc.image,
                      fit: BoxFit.contain,
                    ),
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
                            child: Text(widget.doc.title))),
                    Container(
                        width: 190,
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(widget.doc.subtitle))),
                    Container(
                      width: 190,
                      child: Text(
                        widget.doc.letterText,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 7,
                      ),
                    ),
                  ])),
            ],
          ),
          EmotionBar(doc: widget.doc)
        ],
      ),
    );
  }
}
