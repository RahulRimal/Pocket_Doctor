import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/Home.dart';

void main() => runApp(PocketDoctor());

class PocketDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
