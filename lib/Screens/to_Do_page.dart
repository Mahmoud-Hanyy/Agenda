import 'package:agenda/Constants/color.dart';
import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}
class _ToDoState extends State<ToDo> {
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  bool? isChecked5 = false;


    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              'Activity List',
              style: TextStyle(fontSize: 50, color: bg),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            child: ListTile(
              title: const Text('Call mom'),
              trailing: Checkbox(
                value: isChecked1,
                onChanged: (newBool) {
                  setState(() {
                    isChecked1 = newBool!;
                  });
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            child: ListTile(
              title: const Text('Finish homework'),
              trailing: Checkbox(
                value: isChecked2,
                onChanged: (newBool) {
                  setState(() {
                    isChecked2 = newBool!;
                  });
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            child: ListTile(
              title: const Text('Buy groceries'),
              trailing: Checkbox(
                value: isChecked3,
                onChanged: (newBool) {
                  setState(() {
                    isChecked3 = newBool!;
                  });
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            child: ListTile(
              title: const Text('Job meeting'),
              trailing: Checkbox(
                value: isChecked4,
                onChanged: (newBool) {
                  setState(() {
                    isChecked4 = newBool!;
                  });
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            child: ListTile(
              title: const Text('Go to the gym'),
              trailing: Checkbox(
                value: isChecked5,
                onChanged: (newBool) {
                  setState(() {
                    isChecked5 = newBool!;
                  });
                },
              ),
            ),
          ),
        ],
      );
    }
  }