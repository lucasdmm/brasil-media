import 'package:flutter/material.dart';

class BrPAppBar extends StatelessWidget {
  const BrPAppBar({
    Key key,
    this.pinned = true,
  }) : super(key: key);

  final bool pinned;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: Icon(pinned ? Icons.menu : Icons.arrow_back_ios),
        onPressed: () {
          if (!pinned) {
            Navigator.pop(context);
          }
        },
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
      ],
      expandedHeight: 200,
      pinned: pinned,
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
