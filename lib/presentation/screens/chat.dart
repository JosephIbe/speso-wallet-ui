import 'package:flutter/material.dart';

class Chat extends StatelessWidget {

  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.withOpacity(0.1),
        body: const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text('Chat', style: TextStyle(fontSize: 40),),
          ),
        ),
      ),
    );
  }

}