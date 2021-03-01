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
  int vialCount;
  bool isAdditionalVialNeeded = false;
  final controller = TextEditingController();

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
              controller: controller,
              decoration:
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Pacientų kiekis'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // TODO normal validation needed
                    var patientCount = int.tryParse(controller.text);
                    if (patientCount == null) {
                      vialCount = null;
                      isAdditionalVialNeeded = false;
                    } else {
                      if (patientCount % 6 == 0) {
                        vialCount = patientCount ~/ 6;
                        isAdditionalVialNeeded = false;
                      } else {
                        vialCount = (patientCount ~/ 6) + 1;
                        isAdditionalVialNeeded = true;
                      }
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('SKAČIUOTI FLAKONUS'),
                )),
          ),
          if (vialCount != null)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Flakonų kiekis: $vialCount',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
              ),
            ),
          if (vialCount != null && isAdditionalVialNeeded)
            Text(
              '(${vialCount - 1} flakonai pacientams ir 1 atsargai)',
              textScaleFactor: 1.2,
              textAlign: TextAlign.center,
            )
        ],
      ),
    );
  }
}
