import 'package:flutter/material.dart';
import 'package:study_m8/theme/theme.dart';
import 'package:study_m8/ui/widgets/terms_privacy.dart';
import 'package:study_m8/ui/widgets/two_part_rich.dart';
import 'package:study_m8/ui/widgets/social_button.dart';
import 'package:study_m8/ui/widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isSignup = true;
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome${isSignup ? '!' : ' back'}',
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        isSignup = true;
                      });
                    },
                    buttonText: 'Sign up',
                    bgColor: isSignup ? mainColor : Colors.white,
                    txtColor: isSignup ? Colors.white : mainColor,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        isSignup = false;
                      });
                    },
                    buttonText: 'Login',
                    txtColor: isSignup ? mainColor : Colors.white,
                    bgColor: isSignup ? Colors.white : mainColor,
                  ),
                ],
              ),
              Text(
                'Please ${isSignup ? 'register for an' : 'login to your'} account',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'johndoe@gmail.com',
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.account_circle,
                        size: 26.0,
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      hintText: 'Jo123*&00gts',
                      labelText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock_sharp,
                        size: 25.0,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 18.0,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  isSignup ?
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Color(0xffF35B04),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ) : const SizedBox(height: 48.0,)
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {},
                  buttonText: isSignup ? 'Signup' : 'Login',
                  textSize: 16.0,
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "or ${isSignup ? 'Sign up' : 'Login'} with",
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialButton.google(onTap: () {}),
                  SocialButton.apple(onTap: () {}),
                  SocialButton.facebook(onTap: () {}),
                ],
              ),
              isSignup 
                ? Column(
                   children: [
                    TwoPartRich(
                      inActive: 'Already have an account? ',
                      active: 'Login',
                      onTap: () {},
                    ),
                  ],
                )
                : Column(
                   children: [
                    TwoPartRich(
                      inActive: 'New to StudyM8? ',
                      active: 'Create Account',
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 64.0,
                  child: isSignup ? const TermsPrivacy() : const Row()
                )
            ],
          ),
        ),
      ),
    );
  }
}