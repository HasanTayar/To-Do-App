import 'package:flutter/material.dart';
import 'package:todoapp/views/add_task_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Scaffold(
            body: Column(
              children: [
                //Header View
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                    )),
                //Task Info View
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                    )),
                //Task List View
                Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.blue,
                    )),
              ],
            ),
            floatingActionButton: const AddTaskView()));
  }
}
