import 'package:flutter/material.dart';

class AuthFeild extends StatelessWidget {
  final String hintaya;
  final TextEditingController controller;
  final bool isObscureText;
  const AuthFeild({
    super.key,
    required this.hintaya,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintaya,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintaya is missing";
        }
        return null;
      },
      obscureText: isObscureText,
    );
  }
}
