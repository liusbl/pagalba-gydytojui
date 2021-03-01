import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MemeScreen extends StatefulWidget {
  final Function() onDone;

  const MemeScreen({Key key, this.onDone}) : super(key: key);

  @override
  _MemeScreenState createState() => _MemeScreenState(onDone);
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

  final Function() onDone;
  final random = Random();
  final progressStreamController = new StreamController<double>();
  final textStreamController = new StreamController<String>();
  var progress = 0.0;
  var text = '';

  _MemeScreenState(this.onDone);

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
        print('Testing: progress: $progress');
        progress = value;
        if (value >= 100) {
          // FIXME this should be in onDone(), but that doesn't work
          print('Done: $progress');
          onDone();
//          progressStreamController.close();
//          textStreamController.close();
        }
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
          child: LinearProgressIndicator(
            value: progress / 100,
            valueColor: AlwaysStoppedAnimation<Color>(progress < 100 ? Colors.amber : Colors.green),
            backgroundColor: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20.0,
              letterSpacing: 2.0,
              fontFamily: 'ComicSans',
            ),
          ),
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
      await Future.delayed(Duration(milliseconds: 2500));
      yield _memeList[random.nextInt(_memeList.length)];
    }
  }

  Stream<double> _generateRandomProgress() async* {
    final randomMilliseconds = _generateRandomMilliseconds();
    for (int i = 0; i < randomMilliseconds.length; i++) {
      final delay = randomMilliseconds[i];
      await Future.delayed(Duration(milliseconds: delay));
      yield i / 2;
    }
  }

  List<int> _generateRandomMilliseconds() {
    var min = 10;
    var max = 80;
    final randomStoppages = [
      min + random.nextInt(max - min),
      min + random.nextInt(max - min),
      min + random.nextInt(max - min),
      min + random.nextInt(max - min)
    ];

    return List.generate(202, (value) {
      final randomValue = min + random.nextInt(max - min);
      if (randomStoppages.contains(randomValue)) {
        return 200 + random.nextInt(600 - 200);
      } else {
        return randomValue;
      }
    });
  }
}
