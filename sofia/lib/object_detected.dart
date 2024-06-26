import 'package:flutter/material.dart';

class ObjectDetected extends StatelessWidget {
  final bool detected;
  final String title;
  const ObjectDetected(
      {super.key, required this.detected, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: detected ? Colors.green : Color.fromARGB(255, 255, 120, 210),
      width: 90,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16),
        ),
      ),
    );
  }
}