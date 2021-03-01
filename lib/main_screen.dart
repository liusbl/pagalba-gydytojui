import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/screen_config_list.dart';

import 'main_card.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: screenConfigList.length,
      itemBuilder: (context, index) {
        return MainCard(text: screenConfigList[index].title);
      },
    ).build(context);
  }
}
