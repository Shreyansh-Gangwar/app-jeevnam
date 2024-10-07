import 'package:app/utilities/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldcustom extends StatelessWidget {
  TextFieldcustom(
      {super.key,
      required this.controller,
      required this.obscureText,
      this.fieldIcon,
      required this.hint,
      this.validator,
      required this.formKey,
      this.suffixIcon});

  final TextEditingController controller;
  bool obscureText;
  final IconData? fieldIcon;
  final String formKey;
  final String hint;
  final String Function(String?)? validator;
  final IconData? suffixIcon;
  bool fieldIconCheck = false;
  bool suffixIconCheck = false;

  @override
  Widget build(BuildContext context) {
    if (fieldIcon != null) {
      fieldIconCheck = true;
    }
    if (suffixIcon != null) {
      suffixIconCheck = true;
    }
    return TextFormField(
      controller: controller,
      key: ValueKey(formKey),
      decoration: InputDecoration(
        prefixIcon: fieldIconCheck ? Icon(fieldIcon) : null,
        suffixIcon: suffixIconCheck
            ? IconButton(
                icon: Icon(suffixIcon),
                onPressed: () {
                  obscureText = !obscureText;
                },
              )
            : null,
        hintText: hint,
        fillColor: AppColor.neutral100,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: AppColor.neutral900)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: AppColor.neutral700)),
      ),
      obscureText: obscureText,
      validator: validator,
    );
  }
}
