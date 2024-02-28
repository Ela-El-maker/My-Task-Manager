import 'package:flutter/material.dart';
import 'package:taskify/app_constraints/constant.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    // Mock data for tasks
    int totalTasks = 10;
    int completedTasks = 7;
    int pendingTasks = totalTasks - completedTasks;
    double progress = completedTasks / totalTasks;

    // Mock data for task statistics
    int averageCompletionTime = 5; // in days
    int taskDistribution = 3; // number of categories

    return Scaffold(
      backgroundColor: Color.fromARGB(190, 65, 65, 66),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(height * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: height * 0.08,
                    backgroundImage: AssetImage('assets/images/ela.png'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Felo Ela",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "felo@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Task Summary",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Completed: $completedTasks",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Pending: $pendingTasks",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              LinearProgressIndicator(
                backgroundColor: kBlueLight2.withOpacity(0.5),
                valueColor: AlwaysStoppedAnimation<Color>(kBlueLight2),
                value: progress,
              ),
              SizedBox(height: 10),
              Text(
                "Task Completion: ${(progress * 100).toStringAsFixed(1)}%",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Task Statistics",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Average Completion Time: $averageCompletionTime days",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Task Distribution: $taskDistribution categories",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[300],
                ),
              ),
              // Add more statistics widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
