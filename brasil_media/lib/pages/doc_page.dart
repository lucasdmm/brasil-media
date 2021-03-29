import 'package:brasil_media/widgets/br_p_appbar.dart';
import 'package:flutter/material.dart';

class DocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[BrPAppBar(pinned: false)];
        },
        body: CustomScrollView(
          slivers: [
            //  GestureDetector(
            //       onTap: () {
            //         Navigator.pop(context);
            //       },
            //        child: Container()),
            //   Text('')
          ],
        ),
      ),
    );
  }
}
