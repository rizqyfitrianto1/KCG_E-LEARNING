import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/walktrough_model.dart';
import 'package:kcg_elearning/src/ui/dashboard.dart';

class WalktroughPage extends StatefulWidget {
  @override
  _WalktroughPageState createState() => _WalktroughPageState();
}

class _WalktroughPageState extends State<WalktroughPage> {
  List<SliderModel> slides = new List<SliderModel>();
  int currentIndex = 0;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    slides = getSlide();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xFF009FB1) : Colors.grey[300],
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          controller: pageController,
          itemCount: slides.length,
          onPageChanged: (val) {
            setState(() {
              currentIndex = val;
            });
          },
          itemBuilder: (context, index) {
            return SliderTile(
                imageAssetPath: slides[index].getImageAssetPath(),
                title1: slides[index].getTilte1(),
                title2: slides[index].getTilte2(),
                desc: slides[index].getDesc());
          }),
      bottomSheet: currentIndex != slides.length - 1
          ? Container(
              color: Colors.white,
              height: Platform.isIOS ? 70 : 60,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        // pageController.animateToPage(slides.length - 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Dashboard()));
                      },
                      child: Text("SKIP", style: TextStyle(color: Color(0xFF009FB1)),)),
                  Row(children: <Widget>[
                    for (int i = 0; i < slides.length; i++)
                      currentIndex == i
                          ? pageIndexIndicator(true)
                          : pageIndexIndicator(false)
                  ]),
                  GestureDetector(
                      onTap: () {
                        pageController.animateToPage(currentIndex + 1,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      child: Text("NEXT", style: TextStyle(color: Color(0xFF009FB1)),)),
                ],
              ),
            )
          : InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Dashboard()));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: Platform.isIOS ? 70 : 60,
                color: Color(0xFF009FB1),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
    );
  }
}

class SliderTile extends StatelessWidget {
  String imageAssetPath, title1, title2, desc;
  SliderTile({this.imageAssetPath, this.title1, this.title2, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -125,
            left: 350,
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
          Positioned(
            bottom: -160,
            right: 210,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title1,
                style: TextStyle(
                    color: Color(0xFF009FB1),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "NeutraBold"),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                title2,
                style: TextStyle(
                    color: Color(0xFF026A98),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                imageAssetPath,
                width: MediaQuery.of(context).size.width - 80,
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 60.0),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF026A98),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(
                    80.0, 10.0, 80.0, 40.0),
                child: Text(
                  "PT. KURNIA CIPTAMODA GEMILANG",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF026A98),
                      fontWeight: FontWeight.w400,
                      fontSize: 10.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
