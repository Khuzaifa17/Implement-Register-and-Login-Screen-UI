// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Text_Input_Field extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool isobscure;
  const Text_Input_Field({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.isobscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelStyle: const TextStyle(
          fontSize: 12,
        ),
        prefixIcon: Icon(icon),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blue)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blue)),
      ),
      obscureText: isobscure,
    );
  }
}

class large_Text extends StatelessWidget {
  final String text;
  final Color color;
  double size;
  large_Text({
    super.key,
    required this.text,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: size),
    );
  }
}

class Small_Text extends StatelessWidget {
  final String text;
  final Color color;
  double size;
  Small_Text(
      {super.key, required this.text, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
