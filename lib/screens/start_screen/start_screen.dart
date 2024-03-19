import 'dart:async';
import 'package:flutter/material.dart';
import 'package:study_m8/main.dart';
import 'package:study_m8/screens/onboarding/onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'StudyM8',
                style: TextStyle(color: txtColor, fontSize: 64.0),
              ),
              isLoading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Colors.grey,
                      strokeWidth: 6.0,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
