import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/ui/walktrough_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        fontFamily: 'Neutra',
      ),
      home: WalktroughPage(),
    );
  }
}

