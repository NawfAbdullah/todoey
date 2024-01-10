import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import './TaskTile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: Provider.of<TaskData>(context).tasks[index].name,
                isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
                index: index);
          },
          itemCount: Provider.of<TaskData>(context).tasks.length,
        );
      },
    );
  }
}
