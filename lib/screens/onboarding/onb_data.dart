import 'package:flutter/material.dart';
import 'package:study_m8/main.dart';

final List<Map> onboardingData = [
  {
    'title': 'Learn',
    'desc': 'Learn anytime & anywhere easily and conveniently',
    'image': 'images/learn.png'
  },
  {
    'title': 'Knowledge',
    'desc': 'Gain knowledge & skills ready for the job market',
    'image': 'images/knowledge.png'
  },
  {
    'title': 'Collaborative Study',
    'desc': 'Study in groups, Share ideas',
    'image': 'images/collab.png'
  },
];

class DataView extends StatelessWidget {
  final String title;
  final String desc;
  final String image;

  const DataView(
      {super.key,
      required this.title,
      required this.desc,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        title,
        style: const TextStyle(
            color: txtColor, fontSize: 32.0, fontWeight: FontWeight.bold),
      ),
      Image.asset(image),
      Text(
        desc,
        textAlign: TextAlign.center,
        style: const TextStyle(color: txtColor, fontSize: 24.0),
      ),
    ]);
  }
}
