import 'package:brasil_media/controller/doc_controller.dart';
import 'package:brasil_media/pages/doc_page.dart';
import 'package:brasil_media/widgets/br_p_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/doc_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final docs = Provider.of<DocController>(context);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[BrPAppBar()];
        },
        body: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                                MaterialPageRoute(builder: (_) => DocPage()))
                            .then((value) => setState(() {}));
                      },
                      child: DocWidget(index: index)),
                );
              },
              childCount: docs.list.length,
            ),
          ),
        ]),
      ),
    );
  }
}
