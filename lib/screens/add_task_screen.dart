import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            ),
            SizedBox(height: 20,),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {},
              child: Text("Add", style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}