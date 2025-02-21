import 'package:flutter/material.dart';
import 'package:kwuizo/homepage.dart';

void main() {
  runApp(const Kwuizo());
}

class Kwuizo extends StatelessWidget {
  const Kwuizo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage(),
    );
  }
}