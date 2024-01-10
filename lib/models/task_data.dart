import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'Nawf'), Task(name: 'Rifa')];

  void addTask(String newTask) {
    tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void changeComplete(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
