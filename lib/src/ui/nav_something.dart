import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/ui/account_page.dart';
import 'package:kcg_elearning/src/ui/quiz.dart';
import 'package:kcg_elearning/src/ui/submenu_view.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Quiz()));
                },
                child: Text("QUIZ"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SuccessPage()));
                },
                child: Text("Submit Answer"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountPage()));
                },
                child: Text("Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
