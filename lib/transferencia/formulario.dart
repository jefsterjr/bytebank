import 'package:bytebank/transferencia/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controllerNumeroConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  FormularioTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Criando tranferência")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controllerNumeroConta,
                style: textStyle(),
                key: const Key("numeroConta"),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Número conta", hintText: '0000'),
              ),
              TextField(
                key: const Key("valor"),
                controller: _controllerValor,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Valor",
                    hintText: '0.000,00',
                    icon: Icon(Icons.monetization_on)),
                style: textStyle(),
              ),
              ElevatedButton(
                  onPressed: () {
                    int? numeroConta =
                        int.tryParse(_controllerNumeroConta.text);
                    double? valor = double.tryParse(_controllerValor.text);
                    if (numeroConta != null && valor != null) {
                      var transferenciaCriada =
                          Transferencia(numeroConta, valor);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$transferenciaCriada'),
                        ),
                      );
                    }
                  },
                  child: const Text("Confirmar"))
            ],
          ),
        ));
  }

  TextStyle textStyle() => const TextStyle(fontSize: 24.0);
}
