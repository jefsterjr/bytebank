import 'package:bytebank/model/transferencia.dart';
import 'package:bytebank/transferencia/formulario.dart';
import 'package:bytebank/transferencia/item.dart';
import 'package:flutter/material.dart';

class ListagemTransferencia extends StatelessWidget {
  final List<Transferencia> _transferencias = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tranferências")),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            addTransferencia(context);
          },
          child: const Icon(Icons.add)),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemTransferencia(_transferencias[index]);
          },
          itemCount: _transferencias.length),
    );
  }

  void addTransferencia(BuildContext context) {
    final Future<Transferencia?> future =
        Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FormularioTransferencia();
    }));
    future.then((transferencia) => _transferencias.add(transferencia!));
  }
}
