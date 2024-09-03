import 'package:flutter/material.dart';

import 'package:first_app/gradient.dart';

void main() => runApp(const ScaffoldExampleApp());

class ScaffoldExampleApp extends StatelessWidget {
  const ScaffoldExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body:GradientContainer(
        Colors.deepPurple,
        Colors.deepPurpleAccent,
      ),
    );
  }
}
