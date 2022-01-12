import 'package:flutter/material.dart';

class MyFormTextField extends StatelessWidget {
  Function(String) onSaved;
  InputDecoration decoration;
  Function(String) validator;
  final bool isObscure;

  MyFormTextField(
      {required this.isObscure, required this.decoration, required this.validator, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      decoration: decoration,
      //validator: validator,
      //onSaved: onSaved,
    );
  }
}