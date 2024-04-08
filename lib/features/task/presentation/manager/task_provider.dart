import 'package:flutter/material.dart';
import 'package:my_todo_app/features/task/data/model/todo_model.dart';

class TaskProvider extends ChangeNotifier {
  List<ToDoModel> tasks = [];
  List<ToDoModel> completedTasks = [];
  String id = '';
  String title = '';
  DateTime date = DateTime.now();

  setId(value) {
    id = value;
    notifyListeners();
  }

  setTitle(value) {
    title = value;
    notifyListeners();
  }

  setDate(value) {
    date = value;
    notifyListeners();
  }

  deleteTask(index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  addtask() {
    tasks.add(
      ToDoModel(id: id, title: title),
    );
    notifyListeners();
  }

  addCompletedTask(index) {
    completedTasks.add(tasks[index]);
    tasks.removeAt(index);
    notifyListeners();
  }
}
