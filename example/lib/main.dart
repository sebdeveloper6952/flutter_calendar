import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

main() {
  runApp(new CalendarViewApp());
}

class CalendarViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Calendar'),
        ),
        body: new Container(
          margin: new EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 10.0,
          ),
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              new Text('The Default Calendar:'),
              new Calendar(),
              new Divider(
                height: 50.0,
              ),
              new Text('The Expanded Calendar:'),
              new Calendar(
                isExpandable: true,
              ),
              new Divider(
                height: 50.0,
              ),
              new Text('A Custom Weekly Calendar:'),
              new Calendar(
                dayBuilder: (BuildContext context, DateTime day) {
                  return new Container(
                    decoration: new BoxDecoration(
                        border: new Border.all(color: Colors.black38)),
                    child: new Text(
                      day.day.toString(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}