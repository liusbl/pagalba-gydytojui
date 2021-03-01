import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MemeScreen extends StatefulWidget {
  @override
  _MemeScreenState createState() => _MemeScreenState();
}

class _MemeScreenState extends State<MemeScreen> with SingleTickerProviderStateMixin {
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

  final random = Random();
  final progressStreamController = new StreamController<int>();
  final textStreamController = new StreamController<String>();
  var progress = 0;
  var text = '';

  @override
  void initState() {
    super.initState();
    _setUpProgressStream();
    _setUpTextStream();
  }

  void _setUpProgressStream() {
    final stream = _generateRandomProgress();
    progressStreamController.addStream(stream);
    progressStreamController.stream.listen((value) {
      setState(() {
        progress = value;
      });
    }, onDone: () {});
  }

  void _setUpTextStream() {
    final stream = _generateRandomText();
    textStreamController.addStream(stream);
    textStreamController.stream.listen((value) {
      setState(() {
        text = value;
      });
    }, onDone: () {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: progress / 100,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
          backgroundColor: Colors.blue,
        ),
        Container(
          margin: const EdgeInsets.all(16.0),
          child: Center(child: Text('text: ${text}, value: ${progress}')),
        ),
      ],
    );
  }

  @override
  void dispose() {
    progressStreamController.close();
    textStreamController.close();
    super.dispose();
  }

  Stream<String> _generateRandomText() async* {
    while (true) {
      await Future.delayed(Duration(milliseconds: 1000));
      yield _memeList[random.nextInt(_memeList.length)];
    }
  }

  Stream<int> _generateRandomProgress() async* {
    final randomMilliseconds = _generateRandomMilliseconds();
    for (int i = 0; i < randomMilliseconds.length; i++) {
      final delay = randomMilliseconds[1];
      await Future.delayed(Duration(milliseconds: delay));
      yield i;
    }
  }

  List<int> _generateRandomMilliseconds() {
    var min = 10;
    var max = 350;

    return List.generate(100, (_) => min + random.nextInt(max - min));
  }
}
