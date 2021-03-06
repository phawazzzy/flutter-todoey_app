import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTask(),
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(
                  left: 30.0, top: 60.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                    ),
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Todoey",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "${context.watch<TaskData>().tasks.length} Tasks",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ],
              )),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: context.watch<TaskData>().tasks.length == 0
                  ? Center(
                      child: Text(
                        "start by adding new Task",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    )
                  : TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
