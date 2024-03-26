import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TwoPartRich extends StatelessWidget {
 const  TwoPartRich({
    super.key,
    required this.inActive,
    required this.active,
    required this.onTap
  });

  final String inActive;
  final String active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: inActive,
          style: const TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.w400)),
      TextSpan(
          text: active,
          style: const TextStyle(
            color: Color(0xffF35B04),
            fontSize: 16.0,
            fontWeight: FontWeight.bold
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = onTap),
    ]));
  }
}
