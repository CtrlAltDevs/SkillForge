import 'package:flutter/material.dart';

class GreyButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String name;
  final Color? color;
  final Color? textColor;
  const GreyButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.color,
    this.textColor,
  });

  @override
  State<GreyButton> createState() => _GreyButtonState();
}

class _GreyButtonState extends State<GreyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.color ?? Colors.grey[300],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child: Text(
        widget.name,
        style: TextStyle(
          color: widget.textColor ?? Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
