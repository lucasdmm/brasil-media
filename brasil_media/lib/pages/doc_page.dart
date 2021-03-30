import 'package:brasil_media/helper/config.dart';
import 'package:brasil_media/model/documentary.dart';
import 'package:brasil_media/widgets/br_p_appbar.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';

class DocPage extends StatelessWidget {
  final Documentary doc;
  DocPage({@required this.doc});
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
                            child: Hero(
                              tag: doc,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[300],
                                      offset: Offset(3, 2))
                                ], borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    doc.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
