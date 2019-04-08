import 'package:flutter/material.dart';
import 'package:flutter_app_nagivation/Student.dart';

class SecondRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('yup'),
              onPressed: (){
                print('logged');
                Navigator.pop(context, Student(name: "abc",description: "yup"));
              },
            ),
            RaisedButton(
              child: Text('Nope'),
              onPressed: (){
                print('nope');
                Navigator.pop(context, Student(name: "abc",description: "nope"));
              },
            )
          ],
        ),
      ),
    );
  }
}