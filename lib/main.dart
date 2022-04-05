import 'package:bottom_navigation/four.dart';
import 'package:bottom_navigation/one.dart';
import 'package:bottom_navigation/three.dart';
import 'package:bottom_navigation/two.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;

  final pages = [
    One(),
    Two(),
    Three(),
    Four(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 18,
        backgroundColor: Colors.blueGrey[600],
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _currentindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon((Icons.message)),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon((Icons.call)),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: Icon((Icons.pan_tool)),
            label: "Pan tool",
          ),
          BottomNavigationBarItem(
            icon: Icon((Icons.radio)),
            label: "Radio",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
          print(index);
        },
      ),
    );
  }
}
