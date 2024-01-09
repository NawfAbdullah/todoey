import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import './TaskTile.dart';

class TaskList extends StatelessWidget {
  TaskList({required this.tasks, required this.buildingCallback});

  List<Task> tasks;
  Function buildingCallback;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool value) => buildingCallback(value, index));
      },
      itemCount: tasks.length,
    );
  }
}
