import 'package:flutter/material.dart';
import 'package:study_m8/models/social_enum.dart';
import 'package:study_m8/theme/theme.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.social, required this.onTap});

  factory SocialButton.google({required VoidCallback onTap}) {
    return SocialButton(
      social: Social.google,
      onTap: onTap,
    );
  }

  factory SocialButton.apple({required VoidCallback onTap}) {
    return SocialButton(
      social: Social.apple,
      onTap: onTap,
    );
  }

  factory SocialButton.facebook({required VoidCallback onTap}) {
    return SocialButton(
      social: Social.facebook,
      onTap: onTap,
    );
  }

  final Social social;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          constraints: const BoxConstraints(minHeight: 78.0, minWidth: 74.0),
          decoration: BoxDecoration(
              color: mainColor, borderRadius: BorderRadius.circular(8.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(social.img),
              Text(
                social.name,
                style: const TextStyle(color: Colors.white, fontSize: 12.0),
              )
            ],
          )),
    );
  }
}
