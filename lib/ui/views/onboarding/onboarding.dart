import 'package:flutter/material.dart';
import 'package:study_m8/main.dart';
import 'package:study_m8/models/onboarding_data.dart';
import 'package:study_m8/ui/views/onboarding/onb_data_view.dart';
import 'package:study_m8/ui/widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {
  int currentPage = 0;

  void _navigateToNextPage(BuildContext context) {
    if (currentPage < onboardingData.length - 1) {
      setState(() => currentPage++);
    } else {
      Navigator.pushNamed(context, '/getIn');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20.0, 56.0, 20.0, 16.0),
          child: Column(
            children: [
              Expanded(
                  child: onboardingData.isNotEmpty
                      ? DataView(data: onboardingData[currentPage])
                      : Container()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 34.0),
                child: Text(
                  '${currentPage + 1} of ${onboardingData.length}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CustomButton(
                         onPressed: () => Navigator.pushNamed(context, '/getIn'),
                         buttonText: 'Skip',
                         txtColor: mainColor,
                         bgColor: Colors.white,
                                          )
                      )),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomButton(
                        onPressed: () => _navigateToNextPage(context),
                        buttonText: 'Next',
                        txtColor: mainColor,
                        bgColor: Colors.white,
                      )
                    )
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
