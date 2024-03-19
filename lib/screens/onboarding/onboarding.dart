import 'package:flutter/material.dart';
import 'package:study_m8/main.dart';
import 'package:study_m8/screens/get_you_in/get_you_in.dart';
import 'package:study_m8/screens/onboarding/onb_data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: DataView(
                    title: onboardingData[_currentPage]['title']!,
                    desc: onboardingData[_currentPage]['desc']!,
                    image: onboardingData[_currentPage]['image']!),
              ),
              Text(
                '${_currentPage + 1} of ${onboardingData.length}',
                textAlign: TextAlign.center,
                style: const TextStyle(color: txtColor, fontSize: 16.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetIn()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Skip',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 167,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_currentPage < onboardingData.length - 1) {
                          setState(() => _currentPage++);
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GetIn()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Next',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
