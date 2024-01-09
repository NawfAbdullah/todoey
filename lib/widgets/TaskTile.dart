import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkboxCallback(bool newValue) {
    setState(() {
      print(newValue);
      if (newValue != null) {
        isChecked = newValue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Completed',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggleCheckbox: checkboxCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  bool checkboxState;
  final Function toggleCheckbox;
  TaskCheckBox({required this.checkboxState, required this.toggleCheckbox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (val) {
        toggleCheckbox(val);
      },
    );
  }
}
