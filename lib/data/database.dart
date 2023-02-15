import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box("myBox");

  void initialdata() {
    toDoList = [
      ["Do Exerscise", false],
      ["Study", false],
    ];
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }
}
