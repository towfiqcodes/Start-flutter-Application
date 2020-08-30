import 'package:flutter/material.dart';
import 'package:splashscreen/screen/Page4.dart';

BuildContext _context;

class SliverAppBarTest extends StatefulWidget {
  @override
  _SliverAppBarTestState createState() => _SliverAppBarTestState();
}

class _SliverAppBarTestState extends State<SliverAppBarTest> {
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SliverAppBar"),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            addDetails("One", "This is one"),
            addDetails("Two", "This is two"),
            addDetails("Three", "This is Three"),
            addDetails("Four", "This is four"),
            addDetails("Five", "This is five"),
            addDetails("Six", "This is six"),
            addDetails("Seven", "This is seven"),
            addDetails("Eight", "This is eight"),
            addDetails("Nine", "This is nine"),
            addDetails("Ten", "This is ten"),
          ]))
        ],
      ),
    );
  }
}

Widget addDetails(String name, String description) {
  return ListTile(
    onTap: () {
      Page4();
    },
    title: Text(name,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue)),
    subtitle: Text(description,
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black)),
    // onLongPress: () {
    //   Navigator.push(
    //       _context, MaterialPageRoute(builder: (context) => Page4()));
    // },
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
