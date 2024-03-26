import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsPrivacy extends StatelessWidget {
  const TermsPrivacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          const TextSpan(
              text: 'By signing into StudyM8 you agree to our',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
          TextSpan(
              text: ' Terms of Service ',
              style: const TextStyle(
                  color: Color(0xffF35B04),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()..onTap),
          const TextSpan(
              text: 'and',
              style: TextStyle(fontSize: 16.0, color: Colors.black)),
          TextSpan(
              text: ' Privacy Policy ',
              style: const TextStyle(
                  color: Color(0xffF35B04),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()..onTap)
        ]));
  }
}
