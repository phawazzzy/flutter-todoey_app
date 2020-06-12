import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void callBack(bool newValue) {
    setState(() {
      isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this  is a task', style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: CheckboxTile(isChecked, callBack),
    );
  }
}


class CheckboxTile extends StatelessWidget {
  final bool checkboxState;
  final Function isCheckedCallBack;
  CheckboxTile(this.checkboxState, this.isCheckedCallBack);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: isCheckedCallBack
    );
  }
}
