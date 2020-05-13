import 'package:flutter/material.dart';

class MenuDetail2 extends StatefulWidget {
  @override
  _MenuDetail2State createState() => _MenuDetail2State();
}

class _MenuDetail2State extends State<MenuDetail2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    _buildImageBackgroud(),
                    _buildBackgroundCover(),
                    _buildAppBar(),
                    _buildTitle(),
                    _buildListModule(),
                  ],
                ),
              ]),
        ),
      ),
    );
  }

  _buildBackgroundCover() {
    return Container(
      height: 280.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45)),
          gradient: LinearGradient(
            colors: <Color>[Color(0xFF009FB1), Color(0xFF026A98).withOpacity(0.8)],
            stops: [0.0, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
    );
  }

  _buildAppBar() {
    return Positioned(
        bottom: 190.0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  Text(
                    "Module by CDP",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }

  _buildTitle() {
    return Positioned(
      top: 120,
      left: 10,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.only(left: 20.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "NEOP PROGRAM",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            )),
      ),
    );
  }

  _buildImageBackgroud() {
    return Positioned(
      top: 120,
      right: 5,
      child: Container(
        child: Image.asset(
          "assets/image2.png",
          width: 220,
        ),
      ),
    );
  }

  _buildListModule() {
    return Positioned(
        top: 230.0,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5.5,
                        blurRadius: 5.5,
                      )
                    ]),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/image2.png',
                            ),
                          ),
                        ),
                        height: 80.0,
                        width: 80.0,
                      ),
                      Container(
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight,
                                colors: [
                                  Color(0xFFeaafc8).withOpacity(0.5),
                              Color(0xFF654ea3)
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ])),
                      )
                    ]),
                    SizedBox(width: 20.0),
                    Flexible(
                        child: Text(
                      "Fundational Knowledge ",
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                    )),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5.5,
                        blurRadius: 5.5,
                      )
                    ]),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/image2.png',
                            ),
                          ),
                        ),
                        height: 80.0,
                        width: 80.0,
                      ),
                      Container(
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight,
                                colors: [
                                  Color(0xFFffdde1).withOpacity(0.5),
                              Color(0xFFee9ca7)
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ])),
                      )
                    ]),
                    SizedBox(width: 20.0),
                    Flexible(
                        child: Text(
                      "Guest",
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                    )),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5.5,
                        blurRadius: 5.5,
                      )
                    ]),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/image2.png',
                            ),
                          ),
                        ),
                        height: 80.0,
                        width: 80.0,
                      ),
                      Container(
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight,
                                colors: [
                                  Color(0xFFad5389).withOpacity(0.5),
                              Color(0xFF3c1053)
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ])),
                      )
                    ]),
                    SizedBox(width: 20.0),
                    Flexible(
                        child: Text(
                      "Business Excelent",
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                    )),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5.5,
                        blurRadius: 5.5,
                      )
                    ]),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/image2.png',
                            ),
                          ),
                        ),
                        height: 80.0,
                        width: 80.0,
                      ),
                      Container(
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight,
                                colors: [
                                  Color(0xFFF2C94C).withOpacity(0.5),
                              Color(0xFFF2994A)
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ])),
                      )
                    ]),
                    SizedBox(width: 20.0),
                    Flexible(
                        child: Text(
                      "Operation Excellence ",
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
