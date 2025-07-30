import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final IconData prefixIcon;
  final String hintText;
  final bool obscureText;
  const CustomTextFormField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        hintText: widget.hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
        prefixIcon: Icon(widget.prefixIcon),
      ),
      obscureText: widget.obscureText,
    );
  }
}
