import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function taskCallBack;

  TaskTile({this.isChecked, this.taskName, this.taskCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: taskCallBack
      ),);
  }
}


//class CheckboxTile extends StatelessWidget {
//  final bool checkboxState;
//  final Function isCheckedCallBack;
//  CheckboxTile(this.checkboxState, this.isCheckedCallBack);
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//        activeColor: Colors.lightBlueAccent,
//        value: checkboxState,
//        onChanged: isCheckedCallBack
//    );
//  }
//}
