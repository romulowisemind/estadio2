
import 'package:estadio2/tela_estadio/campo_fut.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Campo());
}

class Campo extends StatelessWidget {
  const Campo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CampoTela());
  }
}
