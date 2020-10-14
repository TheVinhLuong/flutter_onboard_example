import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(),
            body: Column(
              children: <Widget>[
                Counter(),
                FlatButton(
                  child: Text('Refresh whole app'),
                  onPressed: () {
                    setState(() {});
                  },
                )
              ],
            )
        )
    );
  }
}


class Counter extends StatelessWidget {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('rebuildd');
    return Column(
      children: <Widget>[
        Text("Counter value => $counter"),
        Checkbox(
          value: false,
          onChanged: (bool newValue) {
            ++counter;
            print('Counter value => $counter');
            (context as Element).markNeedsBuild();
          },
        )
      ],
    );
  }
}
//
//class Counter extends StatefulWidget {
//  @override
//  _CounterState createState() => _CounterState();
//}
//
//class _CounterState extends State<Counter> {
//  int counter = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        Text("Counter value => $counter"),
//        Checkbox(
//          value: false,
//          onChanged: (bool newValue) {
//            ++counter;
//            print('Counter value => $counter');
//            setState(() {});
//          },
//        )
//      ],
//    );
//  }
//}


