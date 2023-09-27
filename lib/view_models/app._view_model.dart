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
