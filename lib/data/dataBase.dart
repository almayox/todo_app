import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

// refrance the hive box

final _myBox = Hive.box('myBox');

// run this for first time running this app
void createInitialData () {
  toDoList = [
    ['Defult Task', false],
    ['Second Defult Task', true],
  ];
}

// load the data fro the database

void loadData () {
  toDoList = _myBox.get('toDoList');
}

// update the database

void updateData () {
  _myBox.put('toDoList', toDoList);
}

}