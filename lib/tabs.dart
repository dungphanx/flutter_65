import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomeWidget(),
    );
  }
}

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network("https://cdn2.thecatapi.com/images/MTY1NDA3OA.jpg");
  }
}

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network("https://cdn2.thecatapi.com/images/68j.jpg");
  }
}

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network("https://cdn2.thecatapi.com/images/ece.jpg");
  }
}

class HomeWidget extends StatelessWidget {
  HomeWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text("Cat Tabs"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: 'Cat #1', icon: Icon(Icons.keyboard_arrow_left)),
                  Tab(text: 'Cat #2', icon: Icon(Icons.keyboard_arrow_up)),
                  Tab(text: 'Cat #3', icon: Icon(Icons.keyboard_arrow_right))
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[Tab1(), Tab2(), Tab3()],
            )));
  }
}
