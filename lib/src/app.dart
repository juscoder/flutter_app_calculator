import 'package:calculadora/src/pages/calculator_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child:  HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
