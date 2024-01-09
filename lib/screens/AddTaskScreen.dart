import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget buildBottomSheet(BuildContext context) => Container();

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key, required this.textFieldSubmit});
  Function textFieldSubmit;
  String task = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                task = value;
              },
            ),
            TextButton(
                onPressed: () {
                  textFieldSubmit(task);
                  Navigator.pop(context);
                },
                child: Text('Add Task'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlueAccent),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)))
          ],
        ),
      ),
    );
  }
}
