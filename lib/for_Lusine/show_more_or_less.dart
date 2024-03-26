import 'package:flutter/material.dart';

class TextTruncation extends StatefulWidget {
  const TextTruncation({super.key});

  @override
  State<TextTruncation> createState() => _TextTruncationDemoState();
}

class _TextTruncationDemoState extends State<TextTruncation> {

  bool isExpanded = false;
  String longText = "Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs.\nThese principles can be applied to various types of designs, including graphic design, web design,and UX design, to create designs that are visually appealing and functional, and easy to use. ";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isExpanded ? longText : _truncateText(longText),
          style: const TextStyle(fontSize: 16.0),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Show Less' : 'Show More',
            style: const TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  String _truncateText(String text) {
    if (text.length > 150) {
      return '${text.substring(0, 150)}...';
    }
    return text;
  }
}