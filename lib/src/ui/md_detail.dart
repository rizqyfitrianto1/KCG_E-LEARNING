import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/menu.dart';
import 'package:kcg_elearning/src/model/video.dart';
import 'package:kcg_elearning/src/ui/materi_pdf.dart';
import 'package:kcg_elearning/src/ui/quiz_level.dart';

class DetailMD extends StatefulWidget {
  final String title;
  DetailMD(this.title);
  _DetailMDState createState() => _DetailMDState();
}

class _DetailMDState extends State<DetailMD> {
  List<Menu> _menuList = [];
  List<Video> _videoList = [];

  @override
  void initState() {
    super.initState();
    _menuList.add(new Menu(
        title: "PRODUCT CATEGORY",
        color1: Color(0xFF90bdcc),
        color2: Color(0xFF91b38d)));
    _menuList.add(new Menu(
        title: "PRODUCT CLASS",
        color1: Color(0xFF90bdcc),
        color2: Color(0xFF1088a9)));
    _menuList.add(new Menu(
        title: "ANATOMI & STICKER MATERIAL",
        color1: Color(0xFF1088a9),
        color2: Color(0xFF1088a9)));
    _menuList.add(new Menu(
        title: "PRODUCT CARE & MEMBERSHIP",
        color1: Color(0xFF1088a9),
        color2: Color(0xFF1088a9)));

    _videoList.add(new Video(title: "Product Category"));
    _videoList.add(new Video(title: "Product Class"));
    _videoList.add(new Video(title: "Anatomi & Sticker Material"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    _buildBackground(),
                    _buildImageBackground(),
                    _buildHeader(),
                  ],
                ),
                _buildFeatured(),
              ]),
        ),
      ),
    );
  }

  _buildBackground() {
    return Container(
      height: 270,
      child: Align(
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
    );
  }

  _buildImageBackground() {
    return Container(
      height: 270,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [Color(0xFF009FB1).withOpacity(0.5), Color(0xFF026A98)],
              stops: [0.0, 1.0])),
    );
  }

  _buildHeader() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 2 / 3,
        margin: EdgeInsets.only(left: 30.0),
        height: 270,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 32.0,
            ),
          ),
        ),
      ),
    );
  }

  _buildFeatured() {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Materi",
                style: TextStyle(
                    color: Color(0xFF026A98), fontWeight: FontWeight.w700),
              ),
            ),
            new SizedBox(
              height: 145.0,
              child: new ListView.builder(
                itemCount: _menuList.length,
                physics: new ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _menuFeatured(_menuList[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Video",
                style: TextStyle(
                    color: Color(0xFF026A98), fontWeight: FontWeight.w700),
              ),
            ),
            new SizedBox(
              height: 145.0,
              child: new ListView.builder(
                itemCount: _videoList.length,
                physics: new ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return _videoFeatured(_videoList[index]);
                },
              ),
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.only(right: 30.0, top: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFF4C00BF), Color(0xFF009FB1)],
                  stops: [0.0, 1.0],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizLevel()));
                },
                child: Center(
                  child: Text(
                    "Start Quiz!",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ]),
    );
  }

  _menuFeatured(Menu menuList) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MateriPDF(menuList.title)));
        },
      child: Stack(
        children: <Widget>[
          Container(
            height: 145,
            width: 106,
            child: Align(
              alignment: Alignment.bottomRight,
                          child: Image.asset(
                    "assets/image2.png",
                    height: 100.0,
                    width: 100.0,
                  ),
            ),
          ),
          Container(
            height: 145,
             margin: EdgeInsets.only(right: 15.0),
             decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[menuList.color1.withOpacity(0.5), menuList.color2],
                  stops: [0.0, 1.0],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            width: 106,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 15.0),
                child: Text(
                  menuList.title,
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
              ),
          ),
        ],
      ),
    );
  }

  _videoFeatured(Video videoList) {
    return InkWell(
      onTap: (){
        print("TAP");
      },
          child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Icon(
                Icons.slideshow,
                color: Color(0xFF026A98),
              ),
              SizedBox(width: 10.0),
              Text(
                videoList.title,
                style: TextStyle(color: Colors.blue[900], fontSize: 14.0),
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 3.0, right: 20.0),
              height: 1.0,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
