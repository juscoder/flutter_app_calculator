import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final conteo = 10;
  final conteouno = 10;
  final conteodos = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación Contador'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Número de Clicks', style: TextStyle(fontSize: 25.0)),
          Text('$conteo', style: TextStyle(fontSize: 35.0)),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Click en Suma');
          // conteo++;
        },
      ),
    );
  }
}
