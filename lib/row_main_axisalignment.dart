import 'package:flutter/material.dart';

void main() {
  runApp(IconApp());
}

class IconApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rows")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Main Axis Alignment"),
              Text("is"),
              Text("center"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("MainAxisAlignment"),
              const Text("is"),
              const Text("end"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("MainAxisAlignment"),
              const Text("is"),
              const Text("spaceEvenly"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("MainAxisAlignment"),
              const Text("is"),
              const Text("spaceBetween")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text("MainAxisAlignment"),
              const Text("is"),
              const Text("start")
            ],
          ),
        ],
      ),
    );
  }
}
