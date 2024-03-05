import 'package:flutter/material.dart';
import '../app_constraints/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  // String? desc;
  List<Map<String, dynamic>>? desc;
  num? done;
  bool? isLast;

  Task(
      {this.icon,
        this.title,
        this.bgColor,
        this.iconColor,
        this.btnColor,
        this.left,
        this.desc,
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
        desc: [
          {
            'time': '9:00 AM',
            'title': 'Personal',
            'slot': '9:00 AM - 10:00 AM',
            'tlColor': kRedDark,
            'bgColor': kRedLight,
          },
          {
            'time': '11:00 AM',
            'title': 'Task 1',
            'slot': '11:00 AM - 11:30 AM',
            'tlColor': kAmberLight,
            'bgColor': kAmber,
          },
          {
            'time': '12:00 PM',
            'title': 'Task 2',
            'slot': '12:00 PM - 1:00 PM',
            'tlColor': kBlueDark,
            'bgColor': kBlueDark2,
          },
          {
            'time': '2:00 PM',
            'title': 'Web Design',
            'slot': '2:00 PM - 4:00 PM',
            'tlColor': kTeal.withOpacity(0.3),
            'bgColor': kTealLight,
          },
          {
            'time': '5:00 PM',
            'title': 'Football',
            'slot': '5:00 PM - 7:00 PM',
            'tlColor': kAmber.withOpacity(0.3),
            'bgColor': kBlueLight2,
          },
        ],
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
        desc: [
          {
            'time': '9:00 AM',
            'title': 'Team Meeting',
            'slot': '9:00 AM - 10:00 AM',
            'tlColor': kBlueDark,
            'bgColor': kBlueLight,
          },
          {
            'time': '11:00 AM',
            'title': 'Client Call',
            'slot': '11:00 AM - 12:00 PM',
            'tlColor': kAmberLight,
            'bgColor': kAmber,
          },
          {
            'time': '2:00 PM',
            'title': 'Project Deadline',
            'slot': '2:00 PM - 4:00 PM',
            'tlColor': kRed,
            'bgColor': kRedLight,
          },
          {
            'time': '4:30 PM',
            'title': 'Report Submission',
            'slot': '4:30 PM - 5:30 PM',
            'tlColor': kGreen,
            'bgColor': kGreenLight,
          },
          // Add more work-related tasks as needed
        ],
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
        desc: [
          {
            'time': '6:30 AM',
            'title': 'Morning Yoga',
            'slot': '6:30 AM - 7:30 AM',
            'tlColor': kGreen,
            'bgColor': kGreenLight,
          },
          {
            'time': '8:00 AM',
            'title': 'Breakfast',
            'slot': '8:00 AM - 8:30 AM',
            'tlColor': kOrange,
            'bgColor': kYellowLight,
          },
          {
            'time': '12:00 PM',
            'title': 'Healthy Lunch',
            'slot': '12:00 PM - 12:30 PM',
            'tlColor': kGreen,
            'bgColor': kGreenLight,
          },
          {
            'time': '6:00 PM',
            'title': 'Evening Walk',
            'slot': '6:00 PM - 7:00 PM',
            'tlColor': kBlue,
            'bgColor': kBlueLight,
          },
          // Add more health-related tasks as needed
        ],
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
        desc: [
          {
            'time': '10:00 AM',
            'title': 'Grocery Shopping',
            'slot': '10:00 AM - 11:00 AM',
            'tlColor': kGreenLight,
            'bgColor': kGreen,
          },
          {
            'time': '2:00 PM',
            'title': 'Clothes Shopping',
            'slot': '2:00 PM - 3:30 PM',
            'tlColor': kGreen,
            'bgColor': kGreenLight,
          },
          {
            'time': '6:00 PM',
            'title': 'Electronics Store',
            'slot': '6:00 PM - 7:00 PM',
            'tlColor': kBlueDark,
            'bgColor': kBlueLight,
          },
          {
            'time': '8:00 PM',
            'title': 'Home Improvement Store',
            'slot': '8:00 PM - 9:00 PM',
            'tlColor': kOrange,
            'bgColor': kYellowLight,
          },
          {
            'time': '9:30 AM',
            'title': 'Bookstore',
            'slot': '9:30 AM - 10:30 AM',
            'tlColor': kBlue,
            'bgColor': kBlueLight,
          },
          // Add more shopping-related tasks as needed
        ],
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
        desc: [
          {
            'time': '9:00 AM',
            'title': 'Study Session',
            'slot': '9:00 AM - 11:00 AM',
            'tlColor': kBlueDark,
            'bgColor': kBlueLight,
          },
          {
            'time': '2:00 PM',
            'title': 'Group Project Meeting',
            'slot': '2:00 PM - 3:30 PM',
            'tlColor': kGreen,
            'bgColor': kGreenLight,
          },
          {
            'time': '5:00 PM',
            'title': 'Online Course',
            'slot': '5:00 PM - 6:30 PM',
            'tlColor': kYellow,
            'bgColor': kOrangeLight,
          },
          {
            'time': '7:30 PM',
            'title': 'Library Visit',
            'slot': '7:30 PM - 9:00 PM',
            'tlColor': kBlue,
            'bgColor': kBlueLight,
          },
          // Add more education-related tasks as needed
        ],
        done: 4,
        isLast: false,
      ),
      Task(
        icon: Icons.sports_soccer,
        title: 'Sports',
        bgColor: Color.fromARGB(255, 93, 193, 199),
        iconColor: Color.fromARGB(255, 2, 129, 135),
        btnColor: Color.fromARGB(255, 0, 36, 38),
        left: 3,
        desc: [
          {
            'time': '4:00 PM',
            'title': 'Soccer Practice',
            'slot': '4:00 PM - 6:00 PM',
            'tlColor': kAmber,
            'bgColor': kAmberLight,
          },
          {
            'time': '7:00 AM',
            'title': 'Morning Run',
            'slot': '7:00 AM - 8:00 AM',
            'tlColor': kGreen,
            'bgColor': kGreenLight,
          },
          {
            'time': '12:00 PM',
            'title': 'Tennis Match',
            'slot': '12:00 PM - 2:00 PM',
            'tlColor': kBlue,
            'bgColor': kBlueLight,
          },
          {
            'time': '6:00 PM',
            'title': 'Basketball Game',
            'slot': '6:00 PM - 8:00 PM',
            'tlColor': kOrange,
            'bgColor': kYellowLight,
          },
          {
            'time': '9:00 AM',
            'title': 'Swimming',
            'slot': '9:00 AM - 10:00 AM',
            'tlColor': kBlueDark,
            'bgColor': kBlueLight,
          },
          {
            'time': '3:00 PM',
            'title': 'Gym Workout',
            'slot': '3:00 PM - 5:00 PM',
            'tlColor': kRed,
            'bgColor': kRedLight,
          },
          // Add more sports-related tasks as needed
        ],
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
        desc: [
          {
            'time': '7:00 PM',
            'title': 'Practice Piano',
            'slot': '7:00 PM - 8:00 PM',
            'tlColor': kBlueDark,
            'bgColor': kBlueLight,
          },
          // Add more music-related tasks as needed
        ],
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
        desc: [
          {
            'time': '6:00 PM',
            'title': 'Painting Session',
            'slot': '6:00 PM - 8:00 PM',
            'tlColor': kCyan,
            'bgColor': kCyanLight,
          },
          {
            'time': '10:00 AM',
            'title': 'Photography Walk',
            'slot': '10:00 AM - 12:00 PM',
            'tlColor': kGreen,
            'bgColor': kGreenLight,
          },
          {
            'time': '3:00 PM',
            'title': 'Gardening',
            'slot': '3:00 PM - 4:30 PM',
            'tlColor': kBlue,
            'bgColor': kBlueLight,
          },
          {
            'time': '9:00 AM',
            'title': 'Reading',
            'slot': '9:00 AM - 10:30 AM',
            'tlColor': kRed,
            'bgColor': kRedLight,
          },
          // Add more hobby-related tasks as needed
        ],
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
        desc: [
          {
            'time': '7:00 PM',
            'title': 'Family Dinner',
            'slot': '7:00 PM - 9:00 PM',
            'tlColor': kRed,
            'bgColor': kRedLight,
          },
          // Add more family-related tasks as needed
        ],
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
        desc: [
          {
            'time': '6:00 AM',
            'title': 'Morning Jog',
            'slot': '6:00 AM - 7:00 AM',
            'tlColor': kGreen,
            'bgColor': kGreenLight,
          },
          // Add more fitness-related tasks as needed
        ],
        done: 2,
        isLast: true,
      ),
    ];
  }
}
