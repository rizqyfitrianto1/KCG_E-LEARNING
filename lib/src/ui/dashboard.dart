import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/ui/account.dart';
import 'package:kcg_elearning/src/ui/home.dart';
import 'package:kcg_elearning/src/ui/something.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  List<Widget> _container = [
    new Home(),
    new Something(),
    new Account(),
  ];

  void onTapped(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              size: 30.0,
              color: Colors.blue[900],
            ),
            icon: Icon(
              Icons.home,
              size: 30.0,
              color: Colors.blue,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.equalizer,
              size: 30.0,
              color: Colors.blue[900],
            ),
            icon: Icon(
              Icons.equalizer,
              size: 30.0,
              color: Colors.blue,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.account_circle,
              size: 30.0,
              color: Colors.blue[900],
            ),
            icon: Icon(
              Icons.account_circle,
              size: 30.0,
              color: Colors.blue,
            ),
            title: Text(""),
          ),
        ],
        onTap: onTapped,
      ),
    );
  }
}