import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String titleText;

  NextPage({Key key, @required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleText)
      ),
      body: Center(
        child: Text(titleText)
      )
    );
  }
}