import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/menu.dart';
import 'package:kcg_elearning/src/model/recent.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Menu> _menuList = [];
  List<Recent> _recentList = [];

  @override
  void initState() {
    super.initState();
    _menuList.add(new Menu(
        title: "NEOP PROGRAM",
        color1: Colors.green,
        color2: Colors.green[900]));
    _menuList.add(new Menu(
        title: "FASHION MODULE",
        color1: Colors.blue[200],
        color2: Color(0xFF0D47A1)));
    _menuList.add(new Menu(
        title: "KCG SEMINAR",
        color1: Colors.purple[300],
        color2: Colors.purple));

    _recentList.add(new Recent(
        title: "PRODUCT KNOWLEDGE",
        date: "Tuesday, 15 May 2020",
        color1: Colors.pink[100],
        color2: Colors.pink));
    _recentList.add(new Recent(
        title: "ANATOMI & STIC",
        date: "Monday, 6 May 2020",
        color1: Colors.purple[300],
        color2: Colors.purple));
  }

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
                    _buildBackgroundCover(),
                    _buildAppBar(),
                    _buildGreeting(),
                    _buildFeatured(),
                  ],
                ),
              ]),
        ),
      ),
    );
  }

  _buildBackgroundCover() {
    return Container(
      height: 320.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[Colors.blue, Color(0xFF0D47A1)],
        stops: [0.0, 1.0],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )),
    );
  }

  _buildAppBar() {
    return Positioned(
        bottom: 230.0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "KCG E-LEARNING",
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Container(
              height: 2.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white38,
            )
          ]),
        ));
  }

  _buildGreeting() {
    return Positioned(
      bottom: 75,
      child: Container(
        padding: EdgeInsets.all(30.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hi Rizqy,",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                )),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You have currently been registered to our learning program. Keep following and enjoy the process",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                )),
          ],
        ),
      ),
    );
  }

  _buildFeatured() {
    return Positioned(
      bottom: -670,
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 20.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 5.5,
                blurRadius: 5.5,
              )
            ]),
        child: Container(
          child: Column(children: <Widget>[
            new SizedBox(
              height: 200.0,
              child: new ListView.builder(
                itemCount: _menuList.length,
                padding: EdgeInsets.only(top: 12.0),
                physics: new ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _menuFeatured(_menuList[index]);
                },
              ),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent",
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 20.0),
              child: Container(
                height: 2.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
            ),
            new SizedBox(
              height: 100.0,
              child: new ListView.builder(
                itemCount: _recentList.length,
                padding: EdgeInsets.only(top: 12.0),
                physics: new ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _recentFeautured(_recentList[index]);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }

  _menuFeatured(Menu menuList) {
    return InkWell(
      onTap: () {
        print("ini tap");
      },
      child: new Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[menuList.color1, menuList.color2],
              stops: [0.0, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          margin: EdgeInsets.only(right: 20.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  menuList.title,
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
              Image.asset(
                "assets/image2.png",
                height: 100.0,
              ),
            ],
          )),
    );
  }

  _recentFeautured(Recent recentList) {
    return new Container(
        width: 260,
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[recentList.color1, recentList.color2],
            stops: [0.0, 1.0],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: EdgeInsets.only(right: 20.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    recentList.title,
                    style: TextStyle(color: Colors.blue[900], fontSize: 15.0),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(children: <Widget>[
                Icon(
                  Icons.date_range,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  recentList.date,
                  style: TextStyle(color: Colors.blue[900], fontSize: 12.0),
                )
              ]),
            )
          ],
        ));
  }
}
