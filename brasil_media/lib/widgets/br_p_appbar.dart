import 'package:flutter/material.dart';

class BrPAppBar extends StatelessWidget {
  const BrPAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
    );
  }
}
