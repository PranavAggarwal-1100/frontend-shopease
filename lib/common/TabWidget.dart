import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String text;

  const TabWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 16), // Add space before the first text
          Text(text),
          SizedBox(width: 16), // Add space between texts
        ],
      ),
    );
  }
}