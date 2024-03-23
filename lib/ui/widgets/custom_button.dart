import 'package:flutter/material.dart';
import 'package:study_m8/main.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double textSize;
  final double padding;
  final Color bgColor;
  final Color txtColor;

  const CustomButton({
    required this.onPressed,
    required this.buttonText,
    this.textSize = 24.0,
    this.padding = 10.0,
    this.bgColor = mainColor,
    this.txtColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: padding),
        minimumSize: const Size(165, 50),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
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
