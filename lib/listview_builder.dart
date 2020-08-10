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
      home: new MyHomeWidget(),
    );
  }
}

class MyHomeWidget extends StatelessWidget {
  List<dynamic> _nasaOffices = [
    {
      "Name": "Mach 6, High Reynolds Number Facility",
      "Address": "1864 4th St",
      "City": "Wright-Patterson AFB",
      "State": "OH",
      "ZIP": "45433-7541",
      "Country": "US"
    },
    {
      "Name": "N206A - 12 FOOT PRESSURE WIND TUNNEL AUXILIARIES (PAPAC)",
      "Address": "Code RC",
      "City": "Moffett Field",
      "State": "CA",
      "ZIP": "94035",
      "Country": "US"
    }
  ];
  MyHomeWidget({Key key}) : super(key: key) {
    _nasaOffices.sort((a, b) => a['Name'].compareTo(b['Name']));
  }
  @override
  Widget build(BuildContext context) {
    ListView builder = ListView.builder(
        itemCount: _nasaOffices.length,
        itemBuilder: (context, index) {
          print('invoking itemBuilder for row ${index}');
          var nasaOffice = _nasaOffices[index];
          return ListTile(
              title: Text('${nasaOffice['Name']}'),
              subtitle: Text('${nasaOffice['Address']}, ${nasaOffice['City']},'
                  '${nasaOffice['State']}, ${nasaOffice['ZIP']},'
                  '${nasaOffice['Country']}'),
              trailing: Icon(Icons.arrow_right));
        });
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Nasa Offices"),
        ),
        body: new Center(child: builder));
  }
}
