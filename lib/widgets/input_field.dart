import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final RxBool obscureText;
  final bool showSuffixIcon;

  InputField({
    Key? key,
    required this.textEditingController,
    required this.obscureText,
    required this.showSuffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextFormField(
          decoration: InputDecoration(
            suffixIcon: this.showSuffixIcon
                ? GestureDetector(
                    onTap: () {
                      print('value: $obscureText');
                      obscureText.value = !obscureText.value;
                    },
                    child: Icon(this.obscureText.value
                        ? Icons.visibility
                        : Icons.visibility_off))
                : null,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
            ),
          ),
          obscureText: this.obscureText.value,
          controller: this.textEditingController,
          validator: (value) {
            if (value!.isEmpty) {
              return "Field cannot be empty";
            }
          },
        ));
  }
}
