import 'package:flutter/material.dart';
import 'package:algora_demo/Login/loginPage.dart';
void main() {
  runApp(LoginPage());
}

class UserPage extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: UserPageW(title: appTitle),
    );
  }
}

class UserPageW extends StatelessWidget {
  final String title;

  UserPageW({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('ALGORA'),
        centerTitle: true,
        toolbarHeight: 70,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.notifications, size: 30),
              tooltip: 'Show Snackbar',
              onPressed: () {
                noticeDialog(context);
              }),
          IconButton(
            icon: const Icon(Icons.person, size: 30),
            tooltip: 'Next page',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: ListView(
        scrollDirection: Axis.horizontal,
      )),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text(
                  'Algora',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.brightness_1,
                size: 12,
                color: Colors.deepPurpleAccent,
              ),
              title: Text('스코어 보드'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.brightness_1,
                  size: 12, color: Colors.deepPurpleAccent),
              title: Text('질문 게시판'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.brightness_1,
                  size: 12, color: Colors.deepPurpleAccent),
              title: Text('알고라 일정'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.brightness_1,
                  size: 12, color: Colors.deepPurpleAccent),
              title: Text('알고라 투표'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_grocery_store,
                  size: 20, color: Colors.pinkAccent),
              title: Text('상점'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void noticeDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: new Container(
              height: 350,
              width: 200,
          ),
        );
      });
}
