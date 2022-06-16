import 'package:flutter/material.dart';

class Me extends StatelessWidget {

  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.withOpacity(0.1),
        body: const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text('My Profile', style: TextStyle(fontSize: 40),),
          ),
        ),
      ),
    );
  }

}