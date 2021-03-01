import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/main_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
