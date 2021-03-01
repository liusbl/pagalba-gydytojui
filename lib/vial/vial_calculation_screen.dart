import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
              decoration:
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Pacientų kiekis'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(onPressed: () {}, child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('SKAČIUOTI FLAKONUS'),
            )),
          )
        ],
      ),
    );
  }
}
