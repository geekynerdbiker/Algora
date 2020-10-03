import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            logo(context),
            IDPW(context),
            helpCenter(context),
            Container(height: 20),
            loginButtons(context),
          ],
        ),
      ),
    );
  }

  Widget logo(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      margin: EdgeInsets.all(40),
      height: MediaQuery.of(context).size.width * 0.5,
    );
  }
  Widget IDPW(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 10),
        ),
      ],
    );
  }

  Widget helpCenter(BuildContext context) {
    return Text('회원가입 | 아이디 찾기 | 비밀번호 찾기', style: TextStyle(color: Colors.grey, fontSize: 13),);
  }

  Widget loginButtons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width * 0.8,
          height: 40,
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              '로그인',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 0.38,
              height: 40,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Center(
                child: Text(
                  '소셜 로그인 1',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 0.38,
              height: 40,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Center(
                child: Text(
                  '소셜 로그인 2',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 0.38,
              height: 40,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Center(
                child: Text(
                  '소셜 로그인 3',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 0.38,
              height: 40,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Center(
                child: Text(
                  '소셜 로그인 4',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
