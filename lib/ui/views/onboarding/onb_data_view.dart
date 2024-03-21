import 'package:flutter/material.dart';

class OnboardingData {
  final String title;
  final String desc;
  final String image;

  OnboardingData({
    required this.title,
    required this.desc,
    required this.image,
  });
}

class DataView extends StatelessWidget {
  const DataView({super.key, required this.data});

  final OnboardingData data;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        data.title,
        style: const TextStyle(
            color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
      ),
      Image.asset(data.image),
      Text(
        data.desc,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 24.0),
      ),
    ]);
  }
}
