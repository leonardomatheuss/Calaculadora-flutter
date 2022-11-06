import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../componentes/display.dart';
import '../componentes/keyboard.dart';
import '../models/memory.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

 _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }


  @override
  Widget build(BuildContext context) {
   SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
        home: Column(
      children: <Widget>[
        Display(
          text: memory.value,
        ),
        Keyboard(_onPressed),
      ],
    ));
  }
}
