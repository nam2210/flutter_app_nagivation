import 'package:flutter/material.dart';
import 'package:flutter_app_nagivation/Student.dart';
import 'package:flutter_app_nagivation/second_route.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Builder(
        builder: (context) => Container(
          margin: EdgeInsets.all(16),
          child: RaisedButton(
            child: Text('Open route'),
            onPressed: () {
              _navigateAndDisplaySelection(context);
            },
          ),
        ),
      ),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async{
    final Student result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()));

    //after second route return value,, hide any previous snackbars, and show new snackbars
    Scaffold.of(context).removeCurrentSnackBar();
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('${result.toString()}')));
  }
}



