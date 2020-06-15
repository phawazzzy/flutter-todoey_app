import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:toast/toast.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskName: task.name,
                isChecked: task.isDone,
                taskCallBack: (checkBoxState) {
                  taskData.updateTask(task);
                  Toast.show("Task Updated", context,  gravity: Toast.BOTTOM, duration: 2, backgroundColor: Colors.grey);

                },
              deleteTaskCallBack: () {
                  taskData.deleteTask(task);
                  Toast.show("Task deleted", context,  gravity: Toast.BOTTOM, duration: 2, backgroundColor: Colors.red);
              },
            );
          },
        );
      },

    );
  }
}
