import 'package:brasil_media/controller/doc_controller.dart';
import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/pages/doc_page.dart';
import 'package:brasil_media/widgets/emotion_bar.dart';
import 'package:brasil_media/widgets/hero_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocWidget extends StatefulWidget {
  const DocWidget({Key key, this.id}) : super(key: key);
  final int id;
  @override
  _DocWidgetState createState() => _DocWidgetState();
}

class _DocWidgetState extends State<DocWidget> {
  @override
  Widget build(BuildContext context) {
    final doc = Provider.of<DocController>(context)
        .list
        .firstWhere((doc) => doc.id == widget.id);
    return Container(
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(20)),
      height: 270,
      width: 400,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => DocPage(
                            id: doc.id,
                          )));
              // .then((value) => setState(() {}));
            },
            child: Row(
              children: [
                HeroImageWidget(id: doc.id),
                Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Column(children: [
                      Container(
                          width: 190,
                          child: Text(
                            doc.title,
                            style: Config.title,
                          )),
                      Container(
                          width: 190,
                          child: Text(
                            doc.subtitle,
                            style: Config.subtitle,
                          )),
                      Container(
                        width: 190,
                        child: Text(
                          doc.letterText,
                          style: Config.letterText,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 7,
                        ),
                      ),
                    ])),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: EmotionBar(id: doc.id),
          )
        ],
      ),
    );
  }
}
