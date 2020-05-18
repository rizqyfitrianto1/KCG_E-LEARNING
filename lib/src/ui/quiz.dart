import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kcg_elearning/src/ui/success_view.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
  int i = 0;

  var _question = ['Question 1', 'Question 2', 'Question 3'];

  var _answers = [
    ['Answer A1', 'Answer B1', 'Answer C1', 'Answer D1'],
    ['Answer A2', 'Answer B2', 'Answer C2', 'Answer D2'],
    ['Answer A3', 'Answer B3', 'Answer C3', 'Answer D3'],
  ];

  Map<String, Color> btncolor = {
    "A": Colors.white,
    "B": Colors.white,
    "C": Colors.white,
    "D": Colors.white
  };

  void saveAnswer(String choice) {
    print(choice);
    setState(() {
      btncolor[choice] = Colors.greenAccent;
    });

    Timer(Duration(seconds: 1), nextQuestion);
  }

  void nextQuestion() {
    setState(() {
      var lastIndex = _question.length - 1;
      if (i < lastIndex) {
        i++;
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SuccessPage()));
      }

      btncolor["A"] = Colors.white;
      btncolor["B"] = Colors.white;
      btncolor["C"] = Colors.white;
      btncolor["D"] = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "${i + 1}/${_question.length}",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: MediaQuery.of(context).size.height - 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            _question[i],
                            style:
                                TextStyle(color: Colors.blue, fontSize: 20.0),
                          ),
                        ),
                        choiceButton("A", _answers[i][0]),
                        choiceButton("B", _answers[i][1]),
                        choiceButton("C", _answers[i][2]),
                        choiceButton("D", _answers[i][3]),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget choiceButton(String choice, lorem) {
    return InkWell(
      onTap: () {
        saveAnswer(choice);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.all(15.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          border: Border.all(width: 3.0, color: Colors.grey[200]),
          color: btncolor[choice],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              choice,
              style: TextStyle(fontSize: 20.0, color: Colors.blue),
            ),
            SizedBox(width: 20.0),
            Flexible(
                child: Text(
              lorem,
              style: TextStyle(fontSize: 12.0, color: Colors.blue),
            )),
          ],
        ),
      ),
    );
  }
}

class Question {
  String question;
  List<Question> choice;
  Question(this.question, [this.choice = const <Question>[]]);
}
