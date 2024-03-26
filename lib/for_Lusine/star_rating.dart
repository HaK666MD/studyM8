import 'package:flutter/material.dart';

class MyRatingScreen extends StatefulWidget {
  const MyRatingScreen({super.key});

  @override
  State<MyRatingScreen> createState() => _MyRatingScreenState();
}

class _MyRatingScreenState extends State<MyRatingScreen> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:List.generate(5, (index) {
        return IconButton(
          onPressed: () {
            setState(() {
              rating = index + 1;
            });
          },
          icon: Icon(
            index < rating ? Icons.star : Icons.star_border,
            color: Colors.amber,
          ),
        );
      }),
    );
  }
}
