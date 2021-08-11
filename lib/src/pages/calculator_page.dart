import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  //DEFINIMOS LOS ESTILOS DE TEXTO PARA MAS COMODIDAD
  final _estiloTexto =
      new TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold);
  final _estiloTextobtn = new TextStyle(fontSize: 30.0);

  double _conteo1 = 0;
  double _conteo2 = 0;
  double _conteo3 = 0;
  // comenamos crear app
  //double _conteocuatro = 0;
  //double _conteocinco = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: _reset,
          icon: Icon(Icons.calculate, size: 28.0),
        ),
        title: Text('Calculadora', style: TextStyle(fontSize: 35.0)),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //CREAMOS TEXTO NUMERO 1 Y BOTONES
          SizedBox(height: 5.0),
          Text('Número 1:', style: _estiloTexto),
          Text('$_conteo1', style: _estiloTexto),
          SizedBox(height: 15.0),
          _crearBotones1(),

          //CREAMOS TEXTO NUMERO 2 Y BOTONES
          SizedBox(height: 30.0),
          Text('Número 2:', style: _estiloTexto),
          Text('$_conteo2', style: _estiloTexto),
          SizedBox(height: 15.0),
          _crearBotones2(),

          // CREAMOS EL TEXTOO DE RESULATDO
          SizedBox(height: 5.0),
          Text('$_conteo3',
              style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold)),

          //CREAMOS LOS BOTONES DE CALCULATOR * / - +
          SizedBox(height: 30.0),
          _crearBotonescalculer(),
        ],
      )),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  //CREAMOS LOS BOTONES DE NUMERO 1
  Widget _crearBotones1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: _restar,
          child: Icon(Icons.arrow_downward),
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: _agregar,
          child: Icon(Icons.arrow_upward),
        )
      ],
    );
  }

  //CREAMOS LOS BOTONES DE NUMERO 2
  Widget _crearBotones2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: _restaruno,
          child: Icon(Icons.arrow_downward),
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: _agregaruno,
          child: Icon(Icons.arrow_upward),
        )
      ],
    );
  }

  Widget _crearBotonescalculer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //BOTON DE MULTIPLICAR
        SizedBox(width: 2.0),
        FloatingActionButton(
          onPressed: _multiplicar,
          child: Text(
            "*",
            style: _estiloTextobtn,
          ),
        ),

        //BOTON DE DIVIDIR
        SizedBox(width: 20.0),
        FloatingActionButton(
          onPressed: _dividir,
          child: Text(
            '/',
            style: _estiloTextobtn,
          ),
        ),

        //BOTON DE RESTAR
        SizedBox(width: 50.0),
        FloatingActionButton(
          onPressed: _restardos,
          child: Icon(Icons.remove),
        ),

        //BOTON DE SUMAR
        SizedBox(width: 20.0),
        FloatingActionButton(
          onPressed: _sumar,
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  //DEFINIMOS LOS LOS CALCULOS CADA UNO DE LAS OPERACIONES
  void _agregar() {
    setState(() {
      _conteo1++;
    });
  }

  void _restar() {
    setState(() {
      _conteo1--;
    });
  }

  void _agregaruno() {
    setState(() {
      _conteo2++;
    });
  }

  void _restaruno() {
    setState(() {
      _conteo2--;
    });
  }

  void _multiplicar() {
    setState(() {
      _conteo3 = _conteo1 * _conteo2;
    });
  }

  void _dividir() {
    setState(() {
      _conteo3 = _conteo1 / _conteo2;
    });
  }

  void _restardos() {
    setState(() {
      _conteo3 = _conteo1 - _conteo2;
    });
  }

  void _sumar() {
    setState(() {
      _conteo3 = _conteo1 + _conteo2;
    });
  }

  //RESET NUEMBER CALCULATOR
  void _reset() {
    setState(() => _conteo3 = 0);
  }
}
