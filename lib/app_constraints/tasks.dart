import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskify/app_constraints/constant.dart';
import 'package:taskify/models/taskModel.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();
  //  final List<Task> taskList = Task.generateTasks() ?? []; // Ensure taskList is not null

  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: GridView.builder(
        itemCount: taskList.length + 1,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        //  itemBuilder: (context, index) => taskList[index].isLast
        //   : _buildTask(context, taskList[index]),
        //  ? _buildAddTask()
        //itemCount: taskList.length,
        //itemBuilder: (context, index) => (taskList[index] = taskList[index] + 1),
        //itemBuilder: (context, index) => _buildTask(context, taskList[index].isLast ? taskList[index].)),
        // ignore: unnecessary_null_comparison
        // itemBuilder: (context, index) => (taskList[index] != null) ? _buildAddTask() : _buildTask(context, taskList[index]),),
        // option 1 Workshop
        // itemBuilder: (context, index) {
        //  // final task = taskList[index];
        //   if (taskList[index] != null) {
        //     return _buildTask(context, taskList[index]);
        //   } else {
        //     return _buildAddTask();
        //   }
        // }
        // ),
        // itemBuilder: (context, index) => taskList[index].isLast
        //   ? _buildAddTask()
        //   : _buildTask(context, taskList[index]),

        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(10),

        // ),
        //   itemBuilder: (context, index) {
        //     final task = taskList[index];
        //     if (task != null && task.isLast == true) {
        //       return _buildAddTask();
        //     } else {
        //       return _buildTask(context, task!); // Assuming task is not null here
        //     }
        //   }
        // ),
        // itemBuilder: (context, index) {
        //   if (index == taskList.length) {
        //     return _buildAddTask();
        //   } else {
        //     final task = taskList[index];
        //     return _buildTask(context, task);
        //   }
        // },),
        //     itemBuilder: (context, index) {
        //     if (index == taskList.length) {
        //       return _buildAddTask();
        //     } else {
        //       final task = taskList[index];
        //       return task != null ? _buildTask(context, task) : null;
        //     }
        //   },
        // ),
        itemBuilder: (context, index) {
          if (index == taskList.length) {
            return _buildAddTask(); // Return _buildAddTask() for the last index
          } else {
            final task = taskList[index];
            return task != null ? _buildTask(context, task) : null;
          }
        },
      ),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: Color.fromARGB(255, 12, 12, 12),
      strokeWidth: 2,
      padding: EdgeInsets.all(10),
      radius: const Radius.circular(20),
      dashPattern: [10, 10],
      child: const Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
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
        children: [
          Icon(
            taskList.icon,
            color: taskList.iconColor,
            size: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            taskList.title.toString(),
            style: TextStyle(
              color: Color.fromARGB(255, 108, 106, 106),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _buildTaskStatus(
                Colors.grey.shade400,
                taskList.btnColor!,
                '${taskList.left} left',
              ),
              const SizedBox(
                width: 5,
              ),
              _buildTaskStatus(
                kWhite,
                taskList.iconColor!,
                '${taskList.done} done',
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTaskStatus(
    Color bgColor,
    Color txtColor,
    String txt,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            txt,
            style: TextStyle(
              color: txtColor,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
