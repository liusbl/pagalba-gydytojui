import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/main/main_card.dart';
import 'package:pagalba_gydytojui/screen_config.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ScreenConfig.list.length,
      itemBuilder: (context, index) {
        return MainCard(config: ScreenConfig.list[index]);
      },
    ).build(context);
  }
}
