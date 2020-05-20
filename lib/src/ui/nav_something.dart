import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/ui/account_page.dart';
import 'package:kcg_elearning/src/ui/success_view.dart';

class Something extends StatefulWidget {
  @override
  _SomethingState createState() => _SomethingState();
}

class _SomethingState extends State<Something> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Something")
        ),
      ),
    );
  }
}
