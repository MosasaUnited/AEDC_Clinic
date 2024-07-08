import 'package:flutter/material.dart';

class CustomSingleImagePicker extends StatelessWidget {
  const CustomSingleImagePicker(
      {super.key, required this.onPressed, required this.text});

  final Function() onPressed;

  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.deepPurpleAccent[900],
      textColor: Colors.white,
      padding: const EdgeInsets.all(20),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
