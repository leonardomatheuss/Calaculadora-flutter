import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromARGB(110, 71, 71, 62);
  static const DEFAULT = Color.fromARGB(82,170,170,159);
  static const OPERATION = Color.fromARGB(255, 211, 179, 37);
  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button.big(
      {super.key, required this.text, this.big = true, this.color = DARK, required this.cb});
  Button({super.key, required this.text, this.big = false, this.color = DEFAULT, required this.cb});
  Button.operation(
      {super.key,
      required this.text,
      this.big = false,
      this.color = OPERATION, required this.cb});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => cb(text),
        child: Text(text, style: TextStyle(fontSize: 32)),
        style: ElevatedButton.styleFrom(
          primary: this.color,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
