import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/model/documentary.dart';
import 'package:brasil_media/widgets/br_p_appbar.dart';
import 'package:brasil_media/widgets/emotion_bar.dart';
import 'package:brasil_media/widgets/hero_image_widget.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';

class DocPage extends StatefulWidget {
  final Documentary doc;
  DocPage({@required this.doc});

  @override
  _DocPageState createState() => _DocPageState();
}

class _DocPageState extends State<DocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[BrPAppBar(pinned: false)];
        },
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              widget.doc.title,
                              overflow: TextOverflow.clip,
                              style: Config.title,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 3, bottom: 10),
                            child: Text(
                              widget.doc.subtitle,
                              overflow: TextOverflow.clip,
                              style: Config.subtitle,
                            )),
                        DropCapText(
                          widget.doc.letterText,
                          style: Config.letterText,
                          textAlign: TextAlign.justify,
                          dropCap: DropCap(
                            height: 180,
                            width: 180,
                            child: HeroImageWidget(
                              doc: widget.doc,
                            ),
                          ),
                        ),
                        EmotionBar(doc: widget.doc),
                        SizedBox(height: 100)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
