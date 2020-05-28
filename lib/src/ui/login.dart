import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kcg_elearning/src/ui/dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            _buildOverlay1(),
            _buildOverlay2(),
            _buildForm(),
          ],
        ),
      ),
    );
  }

  _buildOverlay1() {
    return Positioned(
      left: 270,
      top: -50,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(300 / 360),
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
    );
  }

  _buildOverlay2() {
    return Positioned(
      left: -300,
      bottom: -80,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(30 / 360),
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
    );
  }

  _buildForm() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/logo.png",
              height: 50.0,
              width: 200.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(fontSize: 16.0),
                  suffixIcon: Icon(Icons.account_circle),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextFormField(
                obscureText: !passwordVisible,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 16.0),
                    suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        })),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 60),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Branch",
                    labelStyle: TextStyle(fontSize: 16.0),
                    suffixIcon: Icon(Icons.domain)),
              ),
            ),
            Container(
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFF01496a4),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Dashboard()));
                },
                child: Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
