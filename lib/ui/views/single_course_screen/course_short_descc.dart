import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_m8/models/course_desc.dart';

class CourseShortDesc extends StatelessWidget {
  const CourseShortDesc({super.key, required this.desc});

  final CourseDesc desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(desc.img)),
        Text(
          desc.name,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
