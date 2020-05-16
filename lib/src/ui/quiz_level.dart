import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/video.dart';
import 'package:kcg_elearning/src/model/video_level.dart';

class QuizLevel extends StatefulWidget {
  @override
  _QuizLevelState createState() => _QuizLevelState();
}

class _QuizLevelState extends State<QuizLevel> {
  List<Video> _videoList = [];
  List<VideoLevel> _videoLevelList = [];

  @override
  void initState() {
    super.initState();
    _videoList.add(new Video(title: "Product Category"));
    _videoList.add(new Video(title: "Product Class"));
    _videoList.add(new Video(title: "Anatomi & Sticker Material"));

    _videoLevelList.add(new VideoLevel(title: "Level 1"));
    _videoLevelList.add(new VideoLevel(title: "Level 2"));
    _videoLevelList.add(new VideoLevel(title: "Level 3"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(children: <Widget>[
              Container(
                height: 85.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topLeft,
                        end: FractionalOffset.bottomRight,
                        colors: [Color(0xFF009FB1), Color(0xFF026A98)],
                        stops: [0.0, 1.0])),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Materi",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF026A98),
                            fontWeight: FontWeight.w700),
                      ),
                      _buildListMateri(),
                    ]),
              )
            ])),
      ),
    );
  }

  _buildListMateri() {
    return new SizedBox(
      height: MediaQuery.of(context).size.height,
      child: new ListView.builder(
        itemCount: _videoList.length,
        physics: new ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return _listMateri(_videoList[index]);
        },
      ),
    );
  }

  _listMateri(Video videoList) {
    return Container(
      width: MediaQuery.of(context).size.height,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              videoList.title,
              style: TextStyle(
                  color: Color(0xFF026A98), fontWeight: FontWeight.w700),
            ),
            new SizedBox(
              height: 145.0,
              child: new ListView.builder(
                itemCount: _videoLevelList.length,
                physics: new ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return _videoFeatured(_videoLevelList[index]);
                },
              ),
            ),
          ]),
    );
  }

  Widget _videoFeatured(VideoLevel videoLevelList) {
    return InkWell(
      onTap: () {
        print(videoLevelList.title);
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.0, left: 20.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(
                    Icons.slideshow,
                    color: Color(0xFF026A98),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    videoLevelList.title,
                    style: TextStyle(color: Colors.blue[900], fontSize: 14.0),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 10.0,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 3.0),
              height: 1.0,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
