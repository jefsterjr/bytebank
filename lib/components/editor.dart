import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final Icon? icon;

  const Editor({this.controller, this.label, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        style: textStyle(),
        keyboardType: TextInputType.number,
        decoration:
            InputDecoration(labelText: label, hintText: hint, icon: icon));
  }

  TextStyle textStyle() => const TextStyle(fontSize: 24.0);
}
