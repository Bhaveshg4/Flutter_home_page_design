import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';

void main() {
  runApp(HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
