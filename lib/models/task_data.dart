import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todoey/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Go to the market"),
    Task(name: "come to kitchen"),
    Task(name: "get to jendor")
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);


  void updateTask(String taskName) {
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }
}