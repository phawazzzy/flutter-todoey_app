import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/Task.dart';

class TaskList extends StatefulWidget {
  final List task;
  TaskList(this.task);
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.task.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: widget.task[index].name,
          isChecked: widget.task[index].isDone,
          taskCallBack: (checkBoxState) {
            setState(() {
              widget.task[index].toggleTask();
            });
          }
        );
      },
    );
  }
}
