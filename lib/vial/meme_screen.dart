import 'dart:math';

import 'package:flutter/material.dart';

class MemeScreen extends StatelessWidget {
  final random = Random();
  static const _memeList = [
    'Scanning for viruses',
    'Connecting to AWS via Starlink',
    'Calculating GME stock',
    'Validating Blockchain Transaction',
    'Initializing GPT-3 Neural Network',
    'Accessing CERN Quantum Supercomputer',
    'Configuring 5G antennas',
    'Securing connection through NordVPN™: \n30% discount TODAY',
    'Storing personal info in backup',
    'Allowing cookies',
    'Accepting GDPR',
    'Don\'t turn off your PC. This will take a while'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(),
        Container(
          margin: const EdgeInsets.all(16.0),
          color: Colors.blue[200],
          child: Center(child: Text(_memeList[random.nextInt(_memeList.length)])),
        ),
      ],
    );
  }

  Stream<int> _generateRandomProgress() async* {
    final randomMilliseconds = _generateRandomMilliseconds();
    for (int i = 0; i < randomMilliseconds.length; i++) {
      var delay = randomMilliseconds[1];
      await Future.delayed(Duration(milliseconds: delay));
      yield delay;
    }
  }

  List<int> _generateRandomMilliseconds() {
    var min = 10;
    var max = 150;
    return List.generate(100, (_) => min + random.nextInt(max - min));
  }
}
