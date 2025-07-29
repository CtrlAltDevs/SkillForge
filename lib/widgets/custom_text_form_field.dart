import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final IconData? icon;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.icon,
    this.obscureText = false,
    this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscure = false;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscure,
      decoration: InputDecoration(
        isDense: true,
        labelText: widget.labelText,
        hintText: widget.hintText,
        labelStyle: const TextStyle(color: Colors.white),
        hintStyle: const TextStyle(color: Colors.white70),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
        prefixIcon: widget.icon != null
            ? Icon(widget.icon, color: Colors.white)
            : null,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _obscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
              )
            : null,
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
