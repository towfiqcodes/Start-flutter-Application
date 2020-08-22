import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Container(
            child: Hero(
                tag: "add",
                child: Icon(
                  Icons.add_alarm,
                  color: Colors.blue,
                  size: 250,
                )
                ),  
        ),
      ),
    );
  }
}