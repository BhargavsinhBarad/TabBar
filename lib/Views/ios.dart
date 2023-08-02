import 'package:flutter/cupertino.dart';

enum week {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Satrday,
}

Map<week, Text> weekday = {
  week.Sunday: Text("Sunday"),
  week.Monday: Text("Monday"),
  week.Tuesday: Text("Tuesday"),
  week.Wednesday: Text("Wednesday"),
  week.Thursday: Text("Thursday"),
  week.Friday: Text("Friday"),
  week.Satrday: Text("Satrday"),
};

class ios extends StatefulWidget {
  const ios({super.key});

  @override
  State<ios> createState() => _iosState();
}

class _iosState extends State<ios> {
  week _selectedSegment = week.Sunday;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoSegmentedControl(
              onValueChanged: (week val) {
                setState(() {
                  _selectedSegment = val;
                });
              },
              children: <week, Widget>{
                week.Sunday: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("0"),
                ),
                week.Monday: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("1"),
                ),
                week.Tuesday: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("2"),
                ),
                week.Wednesday: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("3"),
                ),
                week.Thursday: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("4"),
                ),
                week.Friday: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("5"),
                ),
                week.Satrday: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("6"),
                ),
              },
            ),
          ],
        ),
      ),
      child: Center(
        child: Text(
          '${_selectedSegment.name}',
          style: TextStyle(color: CupertinoColors.black),
        ),
      ),
    );
  }
}
