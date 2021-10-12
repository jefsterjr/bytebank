import 'dart:ffi';

import 'package:bytebank/transferencia/item_transferencia.dart';
import 'package:bytebank/transferencia/transferencia.dart';
import 'package:flutter/material.dart';

class ListaTransferencia extends StatelessWidget {

  const ListaTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      ItemTransferencia(Transferencia('540-2', 200.0)),
      ItemTransferencia(Transferencia('542-2', 102.0)),
      ItemTransferencia(Transferencia('2784670-0', 500))
    ]);
  }
}
