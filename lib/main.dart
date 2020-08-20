import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(
          // child: Scaffold(
          //   body: Center(
          //                 child: Container(
          //       height:  MediaQuery.of(context).size.height,
          //       width:  MediaQuery.of(context).size.height,
          //       color: Colors.deepOrange,
          //     ),
          //   ),
          // appBar: AppBar(title: Text("Home Page"),
          // centerTitle: true,
          // leading: Icon(Icons.message),
          // actions: <Widget>[
          //   IconButton(icon: Icon(Icons.add_a_photo), onPressed: (){})
          // ],),
          // body: Center(
          //   child: Text("This is my First app", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          // ),

          //  child: Scaffold(
          //    backgroundColor: Colors.white10,
          //   body: Text("I Love Coding", style: TextStyle(fontSize: 25,color: Colors.red),),
          //      ),
//   appBar: AppBar(title: Text("Column"),),
//   body: ListView(
//     children: <Widget>[
//       Column(
// children: <Widget>[
//       Container(
//     height: 200,
//     width: 150,
//     color: Colors.deepOrange,
//     // decoration: BoxDecoration(color: Colors.deepOrange),
//     // child: Text("I Love Coding",style: TextStyle(fontSize: 35) ,),
//       ),
//     SizedBox(height: 10,),
//     Container(
//     height: 200,
//     width: 150,
//     color: Colors.deepOrange,

//       ),
//       SizedBox(height: 10,),
//     Container(
//     height: 200,
//     width: 150,
//     color: Colors.deepOrange,
//       )
//     ],
//       )
//     ],

//     //   child: Column(
//     //

//     //   ),
//   ),

          ),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var containerHeight = screenheight / 5;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width / 4,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
