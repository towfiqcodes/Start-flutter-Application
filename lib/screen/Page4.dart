import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Center(
            child: CircleAvatar(
          radius: 100,
          child: Center(
            child: Text(
              "Welcome to Flutter World ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  
                  fontSize: 20),
                  textAlign: TextAlign.center,
            ),
          ),
        )),
      ),
    );
  }
}
