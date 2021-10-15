import 'package:bytebank/screens/listagem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ByteBankApp());
}

MaterialApp ByteBankApp() {
  return MaterialApp(
    home: ListagemTransferencia(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(primary: Colors.green[900], secondary: Colors.blue[700]),
      buttonTheme: ButtonThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.blue[700]),
          textTheme: ButtonTextTheme.primary),
    ),
  );
}
