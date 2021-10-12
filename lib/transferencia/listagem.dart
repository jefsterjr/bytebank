import 'package:bytebank/transferencia/item.dart';
import 'package:bytebank/transferencia/transferencia.dart';
import 'package:flutter/material.dart';

class ListagemTransferencia extends StatelessWidget {
  const ListagemTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listagem = Scaffold(
        appBar: AppBar(title: Text("Tranferências")),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        body: Column(children: const <Widget>[
          ItemTransferencia(Transferencia(5402, 200.0)),
          ItemTransferencia(Transferencia(542-2, 102.0)),
          ItemTransferencia(Transferencia(2784670-0, 500))
        ]));
    return listagem;
  }
}
