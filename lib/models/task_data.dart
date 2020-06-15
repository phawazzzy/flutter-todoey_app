import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todoey/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Go to the market"),
    Task(name: "come to kitchen"),
    Task(name: "get to jendor")
  ];

  //read _task only without able to modifying it
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);


  void addTask(String taskName) {
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}