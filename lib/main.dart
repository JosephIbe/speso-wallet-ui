import 'package:flutter/material.dart';
import 'package:speso/presentation/widgets/landing.dart';

void main() {
  runApp(const SpesoApp());
}

class SpesoApp extends StatelessWidget {

  const SpesoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Speso',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        fontFamily: 'NetflixSans',
      ),
      home: const Landing(),
    );
  }

}