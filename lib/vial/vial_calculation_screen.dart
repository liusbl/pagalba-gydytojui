import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/screen_config.dart';

class VialCalculationScreen extends StatefulWidget {
  final ScreenConfig config;

  const VialCalculationScreen({Key key, this.config}) : super(key: key);

  @override
  _VialCalculationScreenState createState() => _VialCalculationScreenState();
}

class _VialCalculationScreenState extends State<VialCalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Text('123'),
    );
  }
}
