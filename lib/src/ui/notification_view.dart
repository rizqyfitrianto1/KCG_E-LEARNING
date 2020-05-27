import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/notification.dart';
import 'package:kcg_elearning/src/ui/notification_detail.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  List<NotificationModel> _notificationList = [];
  String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
  String token = "c7nGIZVu3E4:APA91bEfCf9hMoe4acP7KM9AZC8KKWX09LDrhYrgi_dK9rKwl9FSszGA7ucJ0cmIM40_uInXGt1RKkVX5F4iSpvezxd6oC87biUshCWftUdVNs5-1wPEmQW-HVQLoDo1xNsaB5IT89VQ";

  List<Message> _messages;
  static int i = 0;

  _getToken(){
    _firebaseMessaging.getToken().then((deviceToken){
      print("Device Token : $deviceToken");
    });
  }

  _configureFirebaseListeners(){
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async{
        if(i%2==0){
        print("onMessage : $message");
        _setMessage(message);
        }
        i++;
      },
      onLaunch: (Map<String, dynamic> message) async{
        if(i%2==0){
        print("onLaunch : $message");
        _setMessage(message);
        }
        i++;
      },
      onResume: (Map<String, dynamic> message) async{
        if(i%2==0){
        print("onResume : $message");
        _setMessage(message);
        }
        i++;
      },
    );
  }

  _setMessage(Map<String, dynamic> message){
    final notification = message['notification'];
    final data = message['data'];
    final String title = notification['title'];
    final String body = notification['body'];
    final String mMessage = data['message'];
    setState(() {
      Message m = Message(title, body, mMessage);
      _messages.add(m);
    });
  }

  @override
  void initState() {
    super.initState();
    _messages = List<Message>();
    _getToken();
    _configureFirebaseListeners();

    _notificationList.add(new NotificationModel(date: "27 MAY 2020"));
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
            itemCount: _messages == null ? 0 : _messages.length,
            physics: new NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return _titleNotification(_messages[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _titleNotification(Message _messages) {
    return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDetail()));
          },
          child: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Text(_messages.message,
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

class Message{
  String title;
  String body;
  String message;
  Message(title, body, message){
    this.title = title;
    this.body = body;
    this.message = message;
  }
}