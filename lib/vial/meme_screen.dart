import 'package:flutter/material.dart';

class MemeScreen extends StatelessWidget {
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
    return Container(
      child: LinearProgressIndicator(
        value: 2,
      ),
    );
  }
}
