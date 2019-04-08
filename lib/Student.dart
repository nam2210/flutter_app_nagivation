import 'package:meta/meta.dart';

class Student{
  String name;
  String description;

  Student({@required this.name, @required this.description});

  @override
  String toString() {
    return 'Student{name: $name, description: $description}';
  }


}