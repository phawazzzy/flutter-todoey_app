import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//     data = Provider.of(context);
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                taskName: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                taskCallBack: (checkBoxState) {
//            setState(() {
//              Provider.of<TaskData>(context, listen: false).tasks[index].toggleTask();
//            });
                }
            );
          },
        );
      },

    );
  }
}
