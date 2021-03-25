import 'package:flutter/material.dart';

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
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
              ],
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  'assets/universe.jpeg',
                  fit: BoxFit.cover,
                ),
                title: Text('Brasil Paralelo'),
              ),
            )
          ];
        },
        body: Center(
          child: Text('Sliver Appbar'),
        ),
      ),
    );
  }
}
