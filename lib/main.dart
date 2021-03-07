import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/main/main_screen.dart';
import 'package:pagalba_gydytojui/screen_config.dart';
import 'package:pagalba_gydytojui/vial/vial_calculation_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
// TODO        ScreenConfig.configLeucovorin.route: (context) => Text('todo'),
        ScreenConfig.configVial.route: (context) =>
            VialCalculationScreen(config: ScreenConfig.configVial),
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
