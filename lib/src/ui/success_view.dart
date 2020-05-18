import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
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
                Container(
                  height: 250,
                  width: 250,
                  margin: EdgeInsets.only(top: 160.0),
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
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                  child: Text(
                    "Congratulations!!",
                    style: TextStyle(
                        fontSize: 34.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 10.0),
                //   child: Text(
                //     "Quiz completed successfully.",
                //     style: TextStyle(
                //         fontSize: 22.0,
                //         color: Colors.black,
                //         fontWeight: FontWeight.w700),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, right: 30.0, bottom: 20.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
              height: 50.0,
              margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0,20.0),
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
                onTap: () {},
                child: Center(
                  child: Text(
                    "View Result",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
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
