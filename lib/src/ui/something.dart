import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/ui/quiz.dart';

class Something extends StatefulWidget {
  @override
  _SomethingState createState() => _SomethingState();
}

class _SomethingState extends State<Something> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz()));
          },
          child: Text("QUIZ"),
          ),
      ),
    );
  }
}