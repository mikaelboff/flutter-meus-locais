import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Locais',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Meus Locais'),
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
  List<String> locais = [
    "Beira",
    "São Miguel do Oeste",
    "Guaraciaba",
    "Curitiba",
    "São Paulo",
    "Barra Bonita",
    "Rio de Janeiro",
    "Lisboa",
    "São Francisco",
    "Floripa",
    "Gramado",
    "São José do Cedro",
    "Washington"
  ];

  List<MaterialColor> cores = Colors.primaries;

  String randomTexto = "";
  MaterialColor randomCor = Colors.blue;

  void _atualizarTela() {
    setState(() {
      randomTexto = locais[new Random().nextInt(locais.length)];
      randomCor = cores[new Random().nextInt(cores.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                _atualizarTela();
              },
              color: randomCor,
              textColor: Colors.white,
              child: Text('Clique!'),
            ),
            new Text('$randomTexto',
                style: Theme.of(context).textTheme.display1)
          ],
        ),
      ),
    );
  }
}
