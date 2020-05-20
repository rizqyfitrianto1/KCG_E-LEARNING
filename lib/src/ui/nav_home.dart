import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/menu.dart';
import 'package:kcg_elearning/src/model/recent.dart';
import 'package:kcg_elearning/src/ui/notification_view.dart';
import 'package:kcg_elearning/src/ui/submenu_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Menu> _menuList = [];
  List<Recent> _recentList = [];

  int notifCount = 15;

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
                    _buildBackgroundFirst(),
                    _buildAppBar(),
                    _buildGreeting(),
                    _buildBackgroundSecond(),
                  ],
                ),
                _buildFeatured(),
              ]),
        ),
      ),
    );
  }

  _buildBackgroundFirst() {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[Color(0xFF009FB1), Color(0xFF026A98)],
        stops: [0.0, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
    );
  }

  _buildAppBar() {
    return Positioned(
        top: 20.0,
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
                  Stack(children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contex) => NotificationPage()));
                        }),
                        notifCount != 0
                ? new Positioned(
                    left: 24,
                    top: 5,
                    child: new Container(
                      padding: EdgeInsets.all(2.5),
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 18,
                        minHeight: 18,
                      ),
                      child: Text(
                        notifCount > 99 ? '99+' : '$notifCount',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ))
                : Container()
                  ])
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
      top: 100,
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
            SizedBox(height: 10.0),
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

  _buildBackgroundSecond() {
    return Positioned(
      top: 270,
      child: Container(
        height: MediaQuery.of(context).size.height,
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
      ),
    );
  }

  _buildFeatured() {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 20.0),
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
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
          child: Text(
            "Recent",
            style: new TextStyle(
                fontSize: 14.0,
                color: Colors.blue,
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            right: 20.0,
          ),
          height: 2.0,
          width: MediaQuery.of(context).size.width - 20,
          color: Colors.grey[300],
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
    );
  }

  _menuFeatured(Menu menuList) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MenuDetail(menuList.title)));
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
