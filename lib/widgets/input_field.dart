import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool obscureText;
  const InputField({
    Key? key,
    required this.textEditingController,
    required this.obscureText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
        ),
      ),
      obscureText: this.obscureText,
      controller: this.textEditingController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Field cannot be empty";
        }
      },
    );
  }
}
