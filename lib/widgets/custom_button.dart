import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String name;
  final Color? color;
  final Color? textColor;
  final double? width;
  final IconData? iconData;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.color,
    this.textColor,
    this.width,
    this.iconData,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: widget.onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(color: Colors.grey[300]!),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.iconData != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(widget.iconData),
                  )
                : SizedBox.shrink(),
            Text(
              widget.name,
              style: TextStyle(
                color: widget.textColor ?? Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
