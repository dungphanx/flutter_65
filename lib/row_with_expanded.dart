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
          const Text("None expanded:"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("aaaaaaaaaa"),
              const Text("bbbbbbbbbb"),
              const Text("cccccccccc")
            ],
          ),
          const Text("1st child expanded:"),
          Row(
            children: <Widget>[
              const Expanded(child: const Text("aaaaaaaaaa")),
              const Text("bbbbbbbbbb"),
              const Text("cccccccccc"),
            ],
          ),
          const Text("2nd child expanded:"),
          Row(
            children: <Widget>[
              const Text("aaaaaaaaaa"),
              const Expanded(child: const Text("bbbbbbbbbb")),
              const Text("cccccccccc"),
            ],
          ),
          const Text("3rd child expanded:"),
          Row(
            children: <Widget>[
              const Text("aaaaaaaaaa"),
              const Text("bbbbbbbbbb"),
              const Expanded(
                child: const Text("cccccccccc"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
