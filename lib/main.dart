import 'package:bytebank/transferencia/lista_transferencia.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Tranferências")),
          floatingActionButton:
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          body: const ListaTransferencia())));
}
