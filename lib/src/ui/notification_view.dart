import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/video_level.dart';
import 'package:kcg_elearning/src/model/notification.dart';
import 'package:kcg_elearning/src/ui/notification_detail.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationModel> _notificationList = [];
  List<VideoLevel> _videoLevelList = [];
  String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";

  @override
  void initState() {
    super.initState();
    _notificationList.add(new NotificationModel(date: "20 MAY 2020"));
    _notificationList.add(new NotificationModel(date: "19 MAY 2020"));
    _notificationList.add(new NotificationModel(date: "18 MAY 2020"));

    _videoLevelList.add(new VideoLevel(
        title: "You got 500 OVO Points from BCA VA Top Up Cashback!"));
    _videoLevelList.add(new VideoLevel(
        title: "You got 500 OVO Points from BCA VA Top Up Cashback!"));
    _videoLevelList.add(new VideoLevel(title: lorem));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: ListView.builder(
        itemCount: _notificationList.length,
        physics: new ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return _notificationItem(_notificationList[index]);
        },
      ),
    );
  }

  Widget _notificationItem(NotificationModel notificationList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            color: Colors.grey[300],
            child: Text(notificationList.date,
                style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0))),
        SizedBox(
          height: 195.0,
          child: ListView.builder(
            itemCount: _videoLevelList.length,
            physics: new NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return _titleNotification(_videoLevelList[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _titleNotification(VideoLevel videoLevelList) {
    return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDetail()));
          },
          child: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Text(videoLevelList.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0))),
          Container(
            height: 0.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
