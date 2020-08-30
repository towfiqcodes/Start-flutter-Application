import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         appBar: AppBar(
           flexibleSpace: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.center,
             end: Alignment.bottomCenter,
             colors: [Colors.red, Colors.yellow])
         ),
        ),
         ),
       body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.center,
             end: Alignment.bottomCenter,
               colors: [Colors.pink, Colors.deepPurple])
         ),
        ),
       ),
    );
  }
}