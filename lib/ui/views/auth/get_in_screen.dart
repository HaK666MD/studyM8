import 'package:flutter/material.dart';
import 'package:study_m8/models/social_enum.dart';
import 'package:study_m8/theme/theme.dart';
import 'package:study_m8/ui/widgets/social_button.dart';
import 'package:study_m8/ui/widgets/custom_button.dart';
import 'package:study_m8/ui/widgets/two_part_rich.dart';

class GetInScreen extends StatelessWidget {
  const GetInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/getIn.png'),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Text(
                        'Let\'s get you in',
                        style: theme.textTheme.bodyMedium,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var el in Social.values)
                        SocialButton(
                          onTap: () {},
                          social: el,
                        ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Text(
                      'Or',
                      style: theme.textTheme.bodyMedium,
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
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: TwoPartRich(
                          inActive: 'New to StudyM8? ',
                          active: 'Create Account',
                          onTap: () {
                            Navigator.of(context).pushNamed('/auth');
                          },
                        )),
                  )
                ],
              ))),
    );
  }
}
