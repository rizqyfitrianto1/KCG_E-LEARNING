import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "1/20",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: MediaQuery.of(context).size.height-120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(color: Colors.blue, fontSize: 20.0),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                            padding: EdgeInsets.all(15.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(15.0)),
                                border: Border.all(
                                  width:3.0,
                                  color: Colors.grey[200]
                                ),
                                ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text("A", style: TextStyle(fontSize: 20.0, color: Colors.blue),),
                                SizedBox(width: 20.0),
                                Flexible(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontSize: 12.0, color: Colors.blue),)),
                              ],
                            ),
                            ),
                            SizedBox(height:20.0),
                                                    Container(
                            padding: EdgeInsets.all(15.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(15.0)),
                                border: Border.all(
                                  width:3.0,
                                  color: Colors.grey[200]
                                ),
                                color: Colors.greenAccent
                                ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text("B", style: TextStyle(fontSize: 20.0, color: Colors.blue),),
                                SizedBox(width: 20.0),
                                Flexible(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontSize: 12.0, color: Colors.blue),)),
                              ],
                            ),
                            ),
                            SizedBox(height: 20.0),
                                                    Container(
                            padding: EdgeInsets.all(15.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(15.0)),
                                border: Border.all(
                                  width:3.0,
                                  color: Colors.grey[200]
                                ),
                                ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text("C", style: TextStyle(fontSize: 20.0, color: Colors.blue),),
                                SizedBox(width: 20.0),
                                Flexible(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontSize: 12.0, color: Colors.blue),)),
                              ],
                            ),
                            ),
                            SizedBox(height: 20.0),
                                                    Container(
                            padding: EdgeInsets.all(15.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(15.0)),
                                border: Border.all(
                                  width:3.0,
                                  color: Colors.grey[200]
                                ),
                                ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text("D", style: TextStyle(fontSize: 20.0, color: Colors.blue),),
                                SizedBox(width: 20.0),
                                Flexible(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style: TextStyle(fontSize: 12.0, color: Colors.blue),)),
                              ],
                            ),
                            ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
