import 'package:bytebank/transferencia/transferencia.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  const ItemTransferencia(this.transferencia);

  @override
  Widget build(BuildContext context) {
    var item = Card(
        child: ListTile(
            leading: const Icon(Icons.monetization_on),
            title: Text(transferencia.valor.toString()),
            subtitle: Text(transferencia.numeroConta.toString())));
    return item;
  }
}
