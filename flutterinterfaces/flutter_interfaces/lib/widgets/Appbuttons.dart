import 'package:flutter/material.dart';

class Appbuttons extends StatelessWidget {
  final Color? textColor;
  final Color? backgroundColor;
  final Color borderColor;
  final String text;
  final String? routeName;
  final VoidCallback? onPressed;
  final double width; // Add width parameter
  final double height; // Add height parameter

  Appbuttons({
    Key? key,
    this.textColor,
    this.backgroundColor,
    this.borderColor = const Color(0xFF2F66F5),
    required this.text,
    this.routeName,
    this.onPressed,
    this.width = 400, // Default width
    this.height = 40, // Default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            if (onPressed != null) {
              onPressed!();
            } else if (routeName != null) {
              Navigator.pushNamed(context, routeName!);
            }
          },
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.white,
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor ?? Color(0xFF2F66F5),
        border: Border.all(width: 1, color: borderColor),
      ),
    );
  }
}
