import 'package:brasil_media/controller/doc_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroImageWidget extends StatefulWidget {
  final int id;
  HeroImageWidget({@required this.id});
  @override
  _HeroImageWidgetState createState() => _HeroImageWidgetState();
}

class _HeroImageWidgetState extends State<HeroImageWidget> {
  @override
  Widget build(BuildContext context) {
    final doc = Provider.of<DocController>(context)
        .list
        .firstWhere((doc) => doc.id == widget.id);
    return Hero(
      transitionOnUserGestures: true,
      tag: doc,
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
            doc.image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
