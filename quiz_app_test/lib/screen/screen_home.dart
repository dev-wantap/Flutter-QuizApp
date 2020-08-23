import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    double width = screensize.width;
    double height = screensize.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("MyQuizApp"),
            backgroundColor: Colors.deepPurple[50],
            leading: Container()),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/Quiz.jpg',
                width: width * 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.024),
            ),
            Text(
              'Flutter Quiz Application',
              style: TextStyle(
                fontSize: width * 0.065,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '퀴즈를 풀기 전 안내사항입니다. \n꼼꼼히 읽고 퀴즈 풀기를 눌러주세요.',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
            _buildStep(width, '1. 안내사항 테스트 1'),
            _buildStep(width, '2. Announcement Test 2'),
            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
            Container(
              padding: EdgeInsets.only(bottom: width * 0.036),
              child: Center(
                child: ButtonTheme(
                    minWidth: width * 0.8,
                    height: height * 0.05,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: RaisedButton(
                      child: Text(
                        '지금 퀴즈 풀기',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.deepPurple,
                      onPressed: () {},
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildStep(double width, String title) {
  return Container(
    padding: EdgeInsets.fromLTRB(
        width * 0.48, width * 0.24, width * 0.48, width * 0.24),
    child: Row(
      children: <Widget>[
        Icon(
          Icons.check_box,
          size: width * 0.04,
        ),
        Text(title)
      ],
    ),
  );
}
