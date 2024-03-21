import 'package:flutter/material.dart';
import 'package:study_m8/ui/views/get_you_in/get_you_in.dart';
import 'package:study_m8/ui/views/onboarding/onboarding.dart';
import 'package:study_m8/ui/views/start_screen/start_screen.dart';

void main() => runApp(const MyApp());

const mainColor = Color(0xff3D348B);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/getIn': (context) => const GetIn()
      },
    );
  }
}
