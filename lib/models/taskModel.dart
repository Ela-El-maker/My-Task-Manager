import 'package:flutter/material.dart';
import 'package:taskify/app_constraints/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool? isLast;

  Task(
      {this.icon,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.done,
      this.isLast = false});

  static List<Task> generateTasks() {
    return [
      Task(
        icon: Icons.person,
        title: 'Personal',
        bgColor: kBlue,
        iconColor: kBlueLight,
        btnColor: kBlue,
        left: 2,
        done: 5,
        isLast: false,
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgColor: kYellowDark,
        iconColor: kYellowLight,
        btnColor: kYellow,
        left: 5,
        done: 1,
        isLast: false,
      ),
      Task(
        icon: Icons.favorite,
        title: 'Health',
        bgColor: kRed,
        iconColor: kRedLight,
        btnColor: kRedDark,
        left: 2,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.shopping_cart,
        title: 'Shopping',
        bgColor: const Color.fromARGB(255, 105, 166, 107),
        iconColor: Color.fromARGB(255, 70, 194, 74),
        btnColor: Color.fromARGB(255, 0, 52, 2),
        left: 6,
        done: 2,
        isLast: false,
      ),
      
      Task(
        icon: Icons.school,
        title: 'Education',
        bgColor: Color.fromARGB(255, 230, 142, 75),
        iconColor: Color.fromARGB(255, 200, 95, 9),
        btnColor: Color.fromARGB(255, 64, 27, 2),
        left: 4,
        done: 3,
        isLast: false,
      ),
      
    ];
  }
}
