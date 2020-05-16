import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/md_model/duration.dart';
import 'package:kcg_elearning/src/model/md_model/learning_outcome.dart';
import 'package:kcg_elearning/src/ui/md_detail.dart';

class Md extends StatefulWidget {
  final String title;
  Md(this.title);
  _MdState createState() => _MdState();
}

class _MdState extends State<Md> {
  String subtitle =
      "Pada modul ini Anda diwajibkan menghafal seluruh Foundational Knowledge brand Charles & Keith";
  List<LearningOutcome> _loList = [];
  List<Duration> _durationList = [];

  @override
  void initState() {
    super.initState();
    _loList.add(new LearningOutcome(
        title: "A. Menjabarkan 10 (sepuluh) Product Category Charles & Keith"));
    _loList.add(new LearningOutcome(
        title:
            "B. Menjabarkan 24 (dua puluh empat) Product Class Charles & Keith"));
    _loList.add(new LearningOutcome(
        title:
            "C. Menjabarkan 3 (tiga) jenis material dan kelebihan dari setiap material Charles & Keith"));
    _loList.add(
        new LearningOutcome(title: "D. Menjabarkan 3 (tiga) jenis Shoe Care"));
    _loList.add(new LearningOutcome(
        title:
            "E. Menjabarkan 6 (enam) keuntungan dan 2 (dua) Membership Charles & Keith"));
    _loList.add(new LearningOutcome(
        title:
            "F. Menjabarkan 3 (tiga) jenis voucher dengan 7 (tujuh) ketentuan Gift Voucher, 5 (lima) ketentuan Gift Certificate, dan 7 (tujuh) ketentuan Discount Voucher"));

    _durationList.add(new Duration(title: "Product Category : 5m"));
    _durationList.add(new Duration(title: "Product Class : 5m"));
    _durationList.add(new Duration(title: "Anatomi & Sticker Material : 3m"));
    _durationList.add(new Duration(title: "Product Care & Membership : 4m"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: <Widget>[
            _buildBackground(),
            _buildImageBackground(),
            _buildHeader(),
            _buildContent(),
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
    return Container(
        width: MediaQuery.of(context).size.width * 2 / 3,
        height: 270,
        margin: EdgeInsets.only(left: 30.0, top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                subtitle,
                style: TextStyle(fontSize: 12.0, color: Colors.white),
              ),
            ),
          ],
        ));
  }

  _buildContent() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(25.0, 230.0, 25.0, 10.0),
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5.5,
            blurRadius: 5.5,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              "Learning Outcome ",
              style: TextStyle(
                  color: Color(0xFF009FB1),
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0),
            ),
          ),
          SizedBox(
            height: 175.0,
            child: ListView.builder(
              itemCount: _loList.length,
              padding: EdgeInsets.only(top: 10.0),
              physics: new ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return _loFeautured(_loList[index]);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12.0),
            height: 1.0,
            color: Colors.grey[300],
          ),
          Row(children: <Widget>[
            Container(
              height: 95.0,
              width: MediaQuery.of(context).size.width / 2 - 45.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Duration ",
                      style: TextStyle(
                          color: Color(0xFF009FB1),
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                  ),
                  Text(
                    "Materi : ",
                    style: TextStyle(
                        color: Color(0xFF009FB1),
                        fontWeight: FontWeight.w700,
                        fontSize: 11.0),
                  ),
                  SizedBox(
                    height: 55.0,
                    child: ListView.builder(
                      itemCount: _durationList.length,
                      padding: EdgeInsets.only(top: 0.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return _durationFeatured(_durationList[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 90.0,
              width: MediaQuery.of(context).size.width / 2 - 45.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Video ",
                      style: TextStyle(
                          color: Color(0xFF009FB1),
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                  ),
                  SizedBox(
                    height: 55.0,
                    child: ListView.builder(
                      itemCount: _durationList.length,
                      padding: EdgeInsets.only(top: 0.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return _durationFeatured(_durationList[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 90.0,
                width: MediaQuery.of(context).size.width / 2 - 45.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Quiz ",
                        style: TextStyle(
                            color: Color(0xFF009FB1),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0),
                      ),
                    ),
                    SizedBox(
                      height: 55.0,
                      child: ListView.builder(
                        itemCount: _durationList.length,
                        padding: EdgeInsets.only(top: 0.0),
                        physics: new ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return _durationFeatured(_durationList[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
          Container(
            height: 50.0,
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
                        builder: (context) => DetailMD(widget.title)));
              },
              child: Center(
                child: Text(
                  "Lets Start!",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _loFeautured(LearningOutcome loList) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Text(
        loList.title,
        style: TextStyle(
            color: Color(0xFF009FB1),
            fontSize: 11.0,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  _durationFeatured(Duration durationList) {
    return Text(
      durationList.title,
      style: TextStyle(
          color: Color(0xFF009FB1),
          fontSize: 11.0,
          fontWeight: FontWeight.w700),
    );
  }
}
