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
    Row flatButtonRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          onPressed: () => debugPrint("Flat button pressed"),
          child: Text("Raised Button"),
        ),
        Text("Raised Button")
      ],
    );

    Row iconButtonRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => debugPrint('IconButton pressed'),
        ),
        Text("Icon Button"),
      ],
    );

    Row outlineButtonRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlineButton(
          onPressed: () => debugPrint('OutlineButton pressed'),
          child: Text("OutlineButton"),
        ),
        Text("OutlineButton"),
      ],
    );

    Row dropdownButtonRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        DropdownButton<String>(
          items: <String>['Mens', 'Womans'].map((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) => debugPrint("Changed: $value)"),
        ),
      ],
    );

    Row backButton = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [BackButton(), Text("BackButton")],
    );

    Row closeButtonRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [CloseButton(), Text("Close Button")],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        flatButtonRow,
        iconButtonRow,
        outlineButtonRow,
        dropdownButtonRow,
        backButton,
        closeButtonRow,
      ]),
    );
  }
}
