import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: MyApp(),
  )
);

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            color: color,
            child:
            Container(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
                  });
                },
              ),
            )
        ),
        Container(
          child: Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(125, 0, 0, 255),
                  ),
                  ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
