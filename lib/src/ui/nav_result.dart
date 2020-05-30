import 'package:flutter/material.dart';
import 'package:kcg_elearning/src/model/result.dart';
import 'package:kcg_elearning/src/model/submenu_model.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<Submenu> _submenuList = [];
  List<Result> _resultList = [];

  int selected = 0;

  @override
  void initState() {
    super.initState();

    _submenuList.add(new Submenu(
        title: "Foundational Knowledge",
        color1: Color(0xFFeaafc8),
        color2: Color(0xFF654ea3)));
    _submenuList.add(new Submenu(
        title: "Guest", color1: Color(0xFFffdde1), color2: Color(0xFFee9ca7)));
    _submenuList.add(new Submenu(
        title: "Business Excellence",
        color1: Color(0xFFad5389),
        color2: Color(0xFF3c1053)));
    _submenuList.add(new Submenu(
        title: "Operation Excellence",
        color1: Color(0xFFF2C94C),
        color2: Color(0xFFF2994A)));

    _resultList.add(new Result(title: "Product Category", score: "97"));
    _resultList.add(new Result(title: "Product Class", score: "100"));
    _resultList.add(new Result(title: "Anatomi", score: "100"));
    _resultList.add(new Result(title: "Shoe Care", score: "90"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              color: Colors.white,
              child: TabBar(labelColor: Colors.black, tabs: <Widget>[
                Tab(
                  child: Text(
                    'Level 1',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Level 2',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Level 3',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
                  ),
                ),
              ]),
            ),
            Container(
              height: 1.0,
              color: Colors.grey[300],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  _content(_submenuList.length),
                  _content(0),
                  _content(0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _content(int length) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Container(
      child: length == 0
          ? Container(
              color: Color(0xFF0fcfcfc),
              child: Image.asset(
                "assets/no_found.jpeg",
                height: 50.0,
                width: 200.0,
              ),
            )
          : Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: new SizedBox(
                height: MediaQuery.of(context).size.height,
                child: new ListView.builder(
                  itemCount: _submenuList.length,
                  physics: new ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1.0,
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.height,
                        child: Theme(
                          data: theme,
                          child: ExpansionTile(
                              key: GlobalKey(),
                              initiallyExpanded: index == selected,
                              title: Text(
                                _submenuList[index].title,
                                style: TextStyle(
                                    color: Color(0xFF026A98),
                                    fontWeight: FontWeight.w700),
                              ),
                              children: <Widget>[
                                Container(
                                  height: 1.0,
                                  color: Colors.grey[300],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 15.0, left: 20.0, right: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Material",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.0),
                                      ),
                                      Text(
                                        "Highest Score",
                                        style: TextStyle(
                                            color: Color(0xFF0b5d252),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 150.0,
                                  child: new ListView.builder(
                                    itemCount: _resultList.length,
                                    physics: new ClampingScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: (context, index) {
                                      return _resultFeatured(
                                          _resultList[index]);
                                    },
                                  ),
                                ),
                              ],
                              onExpansionChanged: ((newState) {
                                if (newState)
                                  setState(() {
                                    selected = index;
                                  });
                                else
                                  setState(() {
                                    selected = -1;
                                  });
                              })),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
    );
  }

  Widget _resultFeatured(Result _result) {
    return Container(
      margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            _result.title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.0),
          ),
          Text(
            _result.score,
            style: TextStyle(color: Color(0xFF0b5d252), fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
