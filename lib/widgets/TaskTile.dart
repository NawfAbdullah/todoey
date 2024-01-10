import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  int index;
  TaskTile(
      {super.key,
      required this.taskTitle,
      this.isChecked = false,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        Provider.of<TaskData>(context, listen: false).removeTask(index);
      },
      title: Text(
        taskTitle,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (val) {
          if (val != null) {
            Provider.of<TaskData>(context, listen: false).changeComplete(index);
          }
        },
      ),
    );
  }
}
