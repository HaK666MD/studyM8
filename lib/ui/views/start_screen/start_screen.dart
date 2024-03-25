import 'dart:async';
import 'package:flutter/material.dart';
import 'package:study_m8/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
        Navigator.pushNamed(context, '/onboarding');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'StudyM8',
                style: TextStyle(color: Colors.white, fontSize: 64.0),
              ),
              if (isLoading)
                const CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: Colors.grey,
                  strokeWidth: 6.0,
                )
            ],
          ),
        ),
      ),
    );
  }
}
