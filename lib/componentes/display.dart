import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:flutter/material.dart';


class Display extends StatelessWidget {
  final String text;

  const Display({super.key, required this.text});



  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1, //ocupar todo espaço da tela
      child: Container(
        color: Color.fromARGB(48, 48, 48, 1) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,//ocupar a coluna interna com cinza
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text,
             maxLines: 80,
             textAlign: TextAlign.end,
             style: TextStyle(
              fontWeight: FontWeight.w100,
              decoration: TextDecoration.none,
              fontSize: 55,
              color: Colors.white,

             )),
             
            ),
          ],
        ),
      ),
    );
  }
}
