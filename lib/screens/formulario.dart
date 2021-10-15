import 'package:bytebank/components/editor.dart';
import 'package:bytebank/model/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerNumeroConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Criando tranferência")),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Editor(
                      label: "Número conta",
                      controller: _controllerNumeroConta,
                      hint: '0000'),
                  Editor(
                      label: "Valor",
                      controller: _controllerValor,
                      icon: const Icon(Icons.monetization_on),
                      hint: '0.000,00'),
                  ElevatedButton(
                      onPressed: () {
                        criarTransferencia(context);
                      },
                      child: const Text("Confirmar"))
                ],
              ),
            )));
  }

  void criarTransferencia(BuildContext context) {
    int? numeroConta = int.tryParse(_controllerNumeroConta.text);
    double? valor = double.tryParse(_controllerValor.text);
    if (numeroConta != null && valor != null) {
      Navigator.pop(context, Transferencia(numeroConta, valor));
    }
  }
}
