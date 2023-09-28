import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  
  final _myBox = Hive.box('mybox');

  
  void createInitialData() {
    toDoList = [
      ["Starting a new journey", false],
    ];
  }

  
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

 
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}