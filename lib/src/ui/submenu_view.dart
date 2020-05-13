import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/submenu_model.dart';

class MenuDetail extends StatefulWidget {
  @override
  _MenuDetailState createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  List<Submenu> _submenuList = [];

  @override
  void initState() {
    super.initState();
    _submenuList.add(new Submenu(
        title: "Fundational Knowledge",
        color1: Color(0xFFeaafc8),
        color2: Color(0xFF654ea3)));
    _submenuList.add(new Submenu(
        title: "Guest",
        color1: Color(0xFFffdde1),
        color2: Color(0xFFee9ca7)));
    _submenuList.add(new Submenu(
        title: "Business Excellence",
        color1: Color(0xFFad5389),
        color2: Color(0xFF3c1053)));
    _submenuList.add(new Submenu(
        title: "Operation Excellence",
        color1: Color(0xFFF2C94C),
        color2: Color(0xFFF2994A)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: <Color>[Color(0xFF009FB1), Color(0xFF026A98)],
                    stops: [0.0, 1.0],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
                  child: Stack(children: <Widget>[
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 180,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/image2.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                              colors: [
                            Color(0xFF009FB1).withOpacity(0.5),
                            Color(0xFF026A98)
                          ],
                              stops: [
                            0.0,
                            1.0
                          ])),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            margin: EdgeInsets.only(left: 30.0),
                            child: Text(
                              "NEOP PROGRAM",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 32.0,),
                            )))
                  ]),
                )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Module by CDP"),
                  )
                ],
              ),
            ];
          },
          body: Container(
            margin: EdgeInsets.all(20.0),
            child: ListView.builder(
                      itemCount: _submenuList.length,
                      padding: EdgeInsets.only(top: 12.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return _submenuFeautured(_submenuList[index]);
                      },
            ),
          ),
      )
    );
  }

  _submenuFeautured(Submenu submenuList) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)),
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
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        submenuList.color1.withOpacity(0.5),
                        submenuList.color2
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
            submenuList.title,
            style: TextStyle(fontSize: 20.0, color: Colors.blue),
          )),
        ],
      ),
    );
  }
}
