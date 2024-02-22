import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taskify/models/taskModel.dart';

class Tasks extends StatelessWidget {
  // final taskList = Task.generateTasks();
    final List<Task> taskList = Task.generateTasks() ?? []; // Ensure taskList is not null

  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: taskList.length,
          //itemBuilder: (context, index) => _buildTask(context, taskList[index].isLast ? taskList[index].)),
          // ignore: unnecessary_null_comparison
          itemBuilder: (context, index) => (taskList[index] != null) ? _buildAddTask() : _buildTask(context, taskList[index]),),
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   borderRadius: BorderRadius.circular(10),

          // ),
    );
  }
}

Widget _buildAddTask() {
  return DottedBorder(
    child: Center(
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    ),
    borderType: BorderType.RRect,
    color: Colors.grey.shade600,
    strokeWidth: 2,
    padding: EdgeInsets.all(10),
    radius: Radius.circular(20),
    dashPattern: [10, 10],
  );
}

Widget _buildTask(BuildContext context, Task taskList) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: taskList.bgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    ),
  );
}
