import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[200],
      child: Center(
          child: RaisedButton(
            onPressed: () {
              print('print here');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
            child: Text('Open Route'),
          ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: Center(
        child: RaisedButton(
          onPressed: () {
            print('back');
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}
