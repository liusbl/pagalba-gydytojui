import 'package:flutter/material.dart';
import 'package:pagalba_gydytojui/screen_config.dart';

class VialCalculationScreen extends StatefulWidget {
  final ScreenConfig config;

  const VialCalculationScreen({Key key, this.config}) : super(key: key);

  @override
  _VialCalculationScreenState createState() => _VialCalculationScreenState(config);
}

class _VialCalculationScreenState extends State<VialCalculationScreen> {
  final ScreenConfig config;

  _VialCalculationScreenState(this.config);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(config.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
              labelText: 'Enter your username'
          ),
        ),
      ),
    );
  }
}
