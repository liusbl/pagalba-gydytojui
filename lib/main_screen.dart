import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/screen_config_list.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: screenConfigList.length,
      itemBuilder: (context, index) {
        return Text(screenConfigList[index].title);
      },
    ).build(context);
  }
}
