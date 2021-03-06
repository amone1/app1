import 'package:flutter/material.dart';

class FormSubmitButton extends StatelessWidget {
  final Function() onPressed;
  FormSubmitButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: RaisedButton(
          onPressed: onPressed,
          child: Text('OK'),
          color: Colors.lightGreen,
        ),
        width: double.infinity);
  }
}