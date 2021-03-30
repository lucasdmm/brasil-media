import 'package:brasil_media/model/documentary.dart';
import 'package:flutter/material.dart';

class HeroImageWidget extends StatefulWidget {
  final Documentary doc;
  HeroImageWidget({@required this.doc});
  @override
  _HeroImageWidgetState createState() => _HeroImageWidgetState();
}

class _HeroImageWidgetState extends State<HeroImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: widget.doc,
      child: Container(
        width: 180,
        height: 180,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.grey[300], offset: Offset(3, 2))
        ], borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            widget.doc.image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
