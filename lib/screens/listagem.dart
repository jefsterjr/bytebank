import 'package:bytebank/model/transferencia.dart';
import 'package:bytebank/screens/formulario.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class ListagemTransferencia extends StatefulWidget {
  final List<Transferencia> _transferencias = List.empty(growable: true);

  @override
  State<StatefulWidget> createState() {
    return ListagemTransferenciaState();
  }
}

class ListagemTransferenciaState extends State<ListagemTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tranferências")),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            addTransferencia(context);
          },
          child: const Icon(Icons.add)),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemTransferencia(widget._transferencias[index]);
          },
          itemCount: widget._transferencias.length),
    );
  }

  void addTransferencia(BuildContext context) {
    final Future<Transferencia?> future =
        Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FormularioTransferencia();
    }));
    future.then((transferencia) => {
          if (transferencia != null)
            {
              setState(() {
                widget._transferencias.add(transferencia);
              })
            }
        });
  }
}
