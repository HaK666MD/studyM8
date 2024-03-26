import 'package:flutter/material.dart';
import 'package:study_m8/theme/theme.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double radius;
  final double textSize;
  final double vPadding;
  final double hPadding;
  final Color bgColor;
  final Color txtColor;

  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      this.radius = 10.0,
      this.textSize = 16.0,
      this.vPadding = 10.0,
      this.hPadding = 25.0,
      this.bgColor = mainColor,
      this.txtColor = Colors.white});

  factory CustomButton.primary(
      {required VoidCallback onPressed, required buttonText}) {
    return CustomButton(
      onPressed: onPressed,
      buttonText: buttonText,
    );
  }

  factory CustomButton.secondary(
      {required VoidCallback onPressed, required buttonText}) {
    return CustomButton(
      onPressed: onPressed,
      buttonText: buttonText,
      bgColor: Colors.white,
      txtColor: mainColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: textSize, color: txtColor),
      ),
    );
  }
}
