import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/md_model/learning_outcome.dart';

class NotificationDetail extends StatefulWidget {
  @override
  _NotificationDetailState createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  List<LearningOutcome> _loList = [];

  @override
  void initState() {
    super.initState();
    _loList.add(
        new LearningOutcome(title: "- Periode program 17 April - 20 Mei 2020"));
    _loList.add(new LearningOutcome(
        title:
            "- Voucher yang diterima setelah pembelian deal donasi dapat diabaikan"));
    _loList.add(new LearningOutcome(
        title:
            "- Total dana yang terkumpul akan dikalikan dua (x2) hingga maksimum Rp 1.500.000.000 (1.5 Miliar Rupiah) oleh OVO, Tokopedia dan Grab."));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          color: Colors.grey[50],
          child: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/img_notif.jpg',
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(20.0, 110.0, 20.0, 25.0),
                  child: Text(
                    "Situasi saat ini mempersulit para pekerja harian untuk mencari uang dan menghidupi keluarganya. Bekerjasama dengan ovo dan grab sekarang kita dapat membantu sesama",
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                _buildLokasiPromo(),
                _buildSK(),
                _buildPrice(),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            _buildBoxFeatured(),
          ]),
        )),
      ),
    );
  }

  _buildBoxFeatured() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(20.0, 130, 20.0, 20.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1.5,
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Patungan untuk Berbagi THR",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              "Tersedia 55550 vouchers",
              style: TextStyle(color: Colors.grey[700], fontSize: 16.0),
            ),
          ),
          Container(
            height: 0.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[400],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Berlaku sampai",
                  style: TextStyle(color: Colors.black, fontSize: 13.0),
                ),
                Text("20 May 2020",
                    style: TextStyle(color: Colors.black, fontSize: 13.0))
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildLokasiPromo() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Lokasi Promo",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1.0,
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Text(
                      "OVO",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "OVO",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }

  _buildSK() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("S&K",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 100.0,
              child: ListView.builder(
                itemCount: _loList.length,
                padding: EdgeInsets.only(top: 10.0),
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return _loFeautured(_loList[index]);
                },
              ),
            ),
          ]),
    );
  }

  _loFeautured(LearningOutcome loList) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Text(
        loList.title,
        style: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w700),
      ),
    );
  }

  _buildPrice() {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Harga Voucher",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16.0),
                ),
                Padding(
                  padding: const EdgeInsets.only( top:8.0),
                  child: Text(
                        "Rp10.000,00",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700),
                      ),
                ),
              ]),
          Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width/2,
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
                },
                child: Center(
                  child: Text(
                    "BELI SEKARANG",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
