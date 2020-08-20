import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:flutter/cupertino.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

void main() => runApp(Myapp1());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: "flutter Demo",
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
    //var screenheight = MediaQuery.of(context).size.height;
    //var containerHeight = screenheight / 5;
    // final pages = [
    //   Container(color: Colors.green,),
    //   Container(color: Colors.red,),
    //   Container(color: Colors.yellow,),
    //   Container(color: Colors.blue,),

    // ];

    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.red,
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.yellow,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 150,
                ),
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 150,
                )
              ],
            ),
          )),
    );
  }
}

// child: Scaffold(
//         body: Center(
//           child: Container(
//               height: 200,
//               width: 200,
//               color: Colors.amber,
//               child: Stack(
//                 alignment: Alignment.center,
//                 overflow: Overflow.visible,
//                 children: <Widget>[
//                   Container(
//                     height: 100,
//                     width: 100,
//                     color: Colors.amber,
//                   ),
//                   Positioned(
//                       bottom: -50,
//                       child: CircleAvatar(
//                         radius: 50,
//                       ))
//                 ],
//               )),
//         ),
//       )

//card
// child: Card(
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),topRight: Radius.circular(20))
//   ),
//   elevation: 10,
//   child: Container(
//     height: 200,
//     width: 200,

//   ),

// ),

class Myapp1 extends StatefulWidget {
  @override
  _Myapp1State createState() => _Myapp1State();
}

class _Myapp1State extends State<Myapp1> {
  PageController controller = PageController(initialPage: 0);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: controller,
          children: <Widget>[
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
