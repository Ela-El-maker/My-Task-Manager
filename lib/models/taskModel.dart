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
        bgColor: kBlueLight,
        iconColor: kBlue,
        btnColor: kBlueDark,
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
      Task(
        icon: Icons.sports_soccer,
        title: 'Sports',
        bgColor: Color.fromARGB(255, 93, 193, 199),
        iconColor: Color.fromARGB(255, 2, 129, 135),
        btnColor: Color.fromARGB(255, 0, 36, 38),
        left: 3,
        done: 2,
        isLast: false,
      ),

      Task(
        icon: Icons.music_note,
        title: 'Music',
        bgColor: Color.fromARGB(255, 194, 107, 217),
        iconColor: Color.fromARGB(255, 142, 37, 148),
        btnColor: Color.fromARGB(255, 64, 0, 97),
        left: 5,
        done: 3,
        isLast: false,
      ),

      Task(
        icon: Icons.local_cafe,
        title: 'Hobby',
        bgColor: Color.fromARGB(255, 240, 188, 128),
        iconColor: Color.fromARGB(255, 217, 138, 73),
        btnColor: Color.fromARGB(255, 97, 56, 0),
        left: 2,
        done: 1,
        isLast: false,
      ),

      Task(
        icon: Icons.family_restroom,
        title: 'Family',
        bgColor: Color.fromARGB(255, 157, 157, 214),
        iconColor: Color.fromARGB(255, 105, 105, 181),
        btnColor: Color.fromARGB(255, 23, 23, 80),
        left: 4,
        done: 2,
        isLast: false,
      ),

      Task(
        icon: Icons.directions_bike,
        title: 'Fitness',
        bgColor: Color.fromARGB(255, 125, 206, 160),
        iconColor: Color.fromARGB(255, 34, 139, 87),
        btnColor: Color.fromARGB(255, 0, 58, 18),
        left: 3,
        done: 2,
        isLast: true,
      ),

    ];
  }
}
