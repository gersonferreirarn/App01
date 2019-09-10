import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Frases do Dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
    'Enfrente os problemas e leve a melhor! Levanta, sacode a poeira, dá a volta por cima. ...',
    'Dê mais atenção ao que você tem de bom na sua vida. ...',
    'Para chegar ao topo, o que importa é começar! ...',
    'De nada adianta ter sonhos, se você não se empenhar em correr atrás.'
  ];

  void _sorteiaNumero() {
    setState(() {

      _numeroAleatorio = new Random().nextInt(4); // sorteia numero estre 0 e 3

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressione o botão para gerar uma frase',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sorteiaNumero,
        tooltip: 'Sortear Frase',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
