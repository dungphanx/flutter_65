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
    RawMaterialButton redButton = RawMaterialButton(
      constraints: BoxConstraints(
        minWidth: 188,
        minHeight: 136,
      ),
      onPressed: () {},
      shape: CircleBorder(),
      elevation: 2.0,
      fillColor: Colors.red,
      padding: EdgeInsets.all(15),
    );

    RawMaterialButton greenButton = RawMaterialButton(
      constraints: BoxConstraints(
        minWidth: 188,
        minHeight: 136,
      ),
      onPressed: () {},
      shape: CircleBorder(),
      elevation: 2.0,
      fillColor: Colors.green,
      padding: EdgeInsets.all(15),
    );

    RawMaterialButton blueButton = RawMaterialButton(
      constraints: BoxConstraints(
        minWidth: 188,
        minHeight: 136,
      ),
      onPressed: () {},
      shape: CircleBorder(),
      elevation: 2.0,
      fillColor: Colors.blue,
      padding: EdgeInsets.all(15),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: redButton),
            Expanded(child: greenButton),
            Expanded(child: blueButton),
          ],
        ),
      ),
    );
  }
}
