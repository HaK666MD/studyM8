import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:study_m8/main.dart';
import 'package:study_m8/models/social_enum.dart';
import 'package:study_m8/ui/views/get_you_in/social_data_view.dart';
import 'package:study_m8/ui/widgets/custom_button.dart';

class GetIn extends StatelessWidget {
  const GetIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/getIn.png'),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    'Let\'s get you in',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var el in Social.values)
                    SocialButton(
                      onTap: () {},
                      social: el,
                    )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  'Or',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {},
                  buttonText: 'Sign in with password',
                  bgColor: mainColor,
                  textSize: 16.0,
                ),
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text.rich(TextSpan(children: [
                      const TextSpan(
                          text: 'New to StudyM8? ',
                          style:
                              TextStyle(color: Colors.black, fontSize: 16.0)),
                      TextSpan(
                          text: 'Create Account',
                          style: const TextStyle(
                            color: Color(0xffF35B04),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                    ]))),
              )
            ],
          )),
    );
  }
}
