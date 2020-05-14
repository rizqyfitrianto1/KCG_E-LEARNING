import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/ui/submenu_view.dart';
import 'package:kcg_elearning/src/ui/success_view.dart';


class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MenuDetail()));
              },
              child: Text("Menu Detail"),
              ),
              RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessPage()));
              },
              child: Text("Submit Answer"),
              ),
              ]
          ),
        ),
      ),
    );
  }
}
