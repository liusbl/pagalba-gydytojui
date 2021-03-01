import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/main_screen.dart';
import 'package:pagalba_gydytojui/screen_config.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ScreenConfig.getRouteById(ScreenConfig.idLeucovorin): (context) => Text('asd'),
        ScreenConfig.getRouteById(ScreenConfig.idVial): (context) => Text('dsa'),
      },
      title: 'Pagalba Gydytojui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pagalba Gydytojui'),
        ),
        body: MainScreen(),
      ),
    );
  }
}
