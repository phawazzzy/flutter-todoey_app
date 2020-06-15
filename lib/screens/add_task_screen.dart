import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/Task.dart';
import 'package:todoey/models/task_data.dart';

class AddTask extends StatelessWidget {

  final Function tasksCallback;
  AddTask({this.tasksCallback});

  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add new task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTask = value;
              },
            ),
            SizedBox(height: 20,),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTask);
                  Navigator.pop(context);
              },
              child: Text("Add", style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
