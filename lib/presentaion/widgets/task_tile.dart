import 'package:flutter/material.dart';

import 'task_checkbox.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function toggleDone;

  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.title,
    required this.toggleDone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newvalue) {
            toggleDone(newvalue);
          },
        ));
  }
}
//bool isChecked = true;
// void checkboxCallBack(bool checkboxstate){
//   setState(() {
//     isChecked=checkboxstate;
//   });}