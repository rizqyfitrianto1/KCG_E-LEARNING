import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[50],
          child: Column(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.white,
              child: Stack(children: <Widget>[
                Positioned(
                  left: 120,
                  top: -290,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(15/360),
                                      child: Container(
                      height: 350,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/overlay_3.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 25.0,
                  bottom: 30.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            color: Colors.white),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/user.jpeg",
                            width: 70.0,
                            height: 70.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Rizqy Fitrianto",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF026A98)),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "Job Title",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.symmetric(vertical : 20.0, horizontal: 30.0),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Details",
                        style: TextStyle(
                            color: Color(0xFF026A98),
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7.0, top: 15.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.mail_outline,
                        color: Color(0xFF026A98),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "rizqy@gmail.com",
                        style: TextStyle(
                            color: Color(0xFF026A98),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0),
                      )
                    ]),
                  ),
                  Container(
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.store,
                        color: Color(0xFF026A98),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "001",
                        style:
                            TextStyle(color: Colors.blue[900], fontSize: 14.0),
                      )
                    ]),
                  ),
                  Container(
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.view_carousel,
                        color: Color(0xFF026A98),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "CK Grand Indonesia",
                        style:
                            TextStyle(color: Colors.blue[900], fontSize: 14.0),
                      )
                    ]),
                  ),
                  Container(
                    height: 1.0,
                    color: Colors.grey[300],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.symmetric(vertical : 20.0, horizontal: 30.0),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("About",
                          style: TextStyle(
                              color: Color(0xFF026A98),
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0))),
                  Container(
                    padding: const EdgeInsets.only(bottom: 7.0, top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Icon(
                            Icons.priority_high,
                            color: Color(0xFF026A98),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Panduan E-Learning",
                            style: TextStyle(
                                color: Color(0xFF026A98), fontSize: 14.0),
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
                  ),
                  Container(
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Icon(
                            Icons.assignment_turned_in,
                            color: Color(0xFF026A98),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Kebijakan Privasi",
                            style: TextStyle(
                                color: Color(0xFF026A98), fontSize: 14.0),
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
                  ),
                  Container(
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Icon(
                            Icons.help,
                            color: Color(0xFF026A98),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Support",
                            style: TextStyle(
                                color: Color(0xFF026A98), fontSize: 14.0),
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
                  ),
                  Container(
                    height: 1.0,
                    color: Colors.grey[300],
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Version 0.0.1 (270)"),
                  Row(children: <Widget>[
                    Text("Release ",style: TextStyle(fontWeight: FontWeight.w700),),
                                        Text("21-01-2020"),
                    ])
                ],
              ),
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.symmetric(vertical : 20.0, horizontal: 30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xFF026A98),
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
