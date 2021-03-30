import 'package:brasil_media/controller/doc_controller.dart';
import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/widgets/br_p_appbar.dart';
import 'package:brasil_media/widgets/emotion_bar.dart';
import 'package:brasil_media/widgets/hero_image_widget.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocPage extends StatefulWidget {
  DocPage({@required this.id});
  final int id;

  @override
  _DocPageState createState() => _DocPageState();
}

class _DocPageState extends State<DocPage> {
  @override
  Widget build(BuildContext context) {
    final doc = Provider.of<DocController>(context)
        .list
        .firstWhere((doc) => doc.id == widget.id);
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
                              doc.title,
                              overflow: TextOverflow.clip,
                              style: Config.title,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 3, bottom: 10),
                            child: Text(
                              doc.subtitle,
                              overflow: TextOverflow.clip,
                              style: Config.subtitle,
                            )),
                        DropCapText(
                          doc.letterText,
                          style: Config.letterText,
                          textAlign: TextAlign.justify,
                          dropCap: DropCap(
                            height: 180,
                            width: 180,
                            child: HeroImageWidget(
                              id: doc.id,
                            ),
                          ),
                        ),
                        EmotionBar(id: doc.id),
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
