import 'package:flutter/material.dart';
import 'package:study_m8/screens/start_screen/start_screen.dart';

void main() => runApp(const MyApp());

const txtColor = Colors.white;
const bgColor = Color.fromRGBO(61, 52, 139, 1.0);
//const bgColor = Color(0xff3D348B);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
