import 'package:flutter/material.dart';
import 'package:flutter_app_nagivation/Todo.dart';

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
      home: ListRoute(),
    );
  }
}


class ListRoute extends StatelessWidget {

  List<Todo> _generateTodo(){
    return List<Todo>.generate(20, (i) => Todo(
      'todo $i',
      'description $i'
    ));
  }

  @override
  Widget build(BuildContext context) {
    var data = _generateTodo();
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(
                '${data[index].title}'
              ),
              subtitle: Text(
                '${data[index].description}'
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    DetailRoute(name: data[index].title, description: data[index].description)));
              },
            );
          })
    );
  }
}

class DetailRoute extends StatelessWidget{

  final String name;
  final String description;

  DetailRoute({@required this.name, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Column(
        children: <Widget>[
          Text(this.name),
          Text(this.description)
        ],
      ),
    );
  }

}