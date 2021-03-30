import 'package:brasil_media/controller/doc_controller.dart';
import 'package:brasil_media/controller/user_controller.dart';
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
    docs.generateMockList(context);
    final users = Provider.of<UserController>(context);
    users.generateMockList(context);
    var list = docs.list
        .where((doc) =>
            doc.patriota == users.userSinged.patriota &&
            doc.premium == users.userSinged.premium)
        .toList();

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[BrPAppBar()];
        },
        body: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: DocWidget(id: list[index].id),
                    ),
                  ],
                );
              },
              childCount: list.length,
            ),
          ),
        ]),
      ),
    );
  }
}
