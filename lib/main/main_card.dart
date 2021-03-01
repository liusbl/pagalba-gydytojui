import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/screen_config.dart';

class MainCard extends StatelessWidget {
  final ScreenConfig config;

  const MainCard({Key key, this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Card(
        elevation: 5,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, config.route);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(config.title),
          ),
        ),
      ),
    );
  }
}
