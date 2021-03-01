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
        title: Text('Flakonų skaičiuoklė'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              'Kiek pacientų užregistruota vakcinavimui ryojui?',
              textAlign: TextAlign.start,
              textScaleFactor: 1.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextFormField(
              decoration:
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Pacientų kiekis'),
            ),
          ),
        ],
      ),
    );
  }
}
