
import 'package:study_m8/ui/views/auth/signup_screen.dart';
import 'package:study_m8/ui/views/auth/get_in_screen.dart';
import 'package:study_m8/ui/views/onboarding/onboarding_screen.dart';
import 'package:study_m8/ui/views/payment/payment_screen.dart';
import 'package:study_m8/ui/views/splash/splash_screen.dart';
//import 'package:study_m8/ui/views/single_course/single_course_screen.dart';

final routes = {
  '/': (context) => const SplashScreen(),
  '/onboarding': (context) => const OnboardingScreen(),
  '/getIn': (context) => const GetInScreen(),
  '/payment': (context) => const PaymentScreen(),
  '/auth': (context) => const SignUpScreen(),
};
