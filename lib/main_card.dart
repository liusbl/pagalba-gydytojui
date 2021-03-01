import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final String text;

  const MainCard({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Text(text),
    );
  }
}
