import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: <Widget>[
          Container(
              padding:
                  EdgeInsets.only(left: 30.0, top: 60.0, right: 30.0, bottom: 30.0),
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
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '12 Task',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),

                ],
              )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
