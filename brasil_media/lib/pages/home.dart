import 'package:brasil_media/widgets/br_p_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/doc_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[BrPAppBar()];
        },
        body: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              SafeArea(
                  top: true,
                  child: Hero(
                    tag: 'doc',
                    child: DocWidget(),
                  )),
            ]),
          ),
        ]),
      ),
    );
  }
}
