import 'package:flutter/material.dart';
import 'package:study_m8/routes/routes.dart';
import 'package:study_m8/theme/theme.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routes: routes,
    );
  }
}
