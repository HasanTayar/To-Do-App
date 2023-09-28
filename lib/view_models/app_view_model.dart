import 'package:flutter/material.dart';
import 'package:todoapp/models/task_model.dart';
import 'package:todoapp/models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
  User user = User("Hasan Tayar");

  Color crlLvl1 = Colors.grey.shade50;
  Color crlLvl2 = Colors.grey.shade200;
  Color crlLvl3 = Colors.grey.shade800;
  Color crlLvl4 = Colors.grey.shade900;

  bool getTasksValue(int taskIndex) {
    return tasks[taskIndex].complete;
  }

  String get username => user.username.toString();
  int get numTasks => tasks.length;

  int get numTasksRemaining => tasks.where((task) => !task.complete).length;

  String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }

  void updateUserName(newUserName) {
    user.username = newUserName;
    notifyListeners();
  }

  void deleteAllTasks() {
    tasks.clear();
    notifyListeners();
  }

  void setTaskValue(int taskIndex, bool taskValue) {
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
  }

  void addTask(task) {
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void deleteCompltedTask() {
    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }

  void bottomSheetBuilder(
    Widget bottomSheetView,
    BuildContext context,
  ) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (context) {
        return bottomSheetView;
      },
    );
  }
}
