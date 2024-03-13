import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Task Manager'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.check_circle_outline,
                  size: 100,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Task Manager',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Task Manager is a simple yet powerful app designed to help you organize and manage your tasks efficiently.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            ),
            SizedBox(height: 30),
            Text(
              'Features:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            FeatureItem(
              icon: Icons.playlist_add,
              text: 'Add, edit, and delete tasks easily.',
            ),
            FeatureItem(
              icon: Icons.category,
              text: 'Categorize tasks into different lists or categories.',
            ),
            FeatureItem(
              icon: Icons.date_range,
              text: 'Set due dates and reminders for tasks.',
            ),
            FeatureItem(
              icon: Icons.check_circle,
              text: 'Mark tasks as completed and track your progress.',
            ),
            SizedBox(height: 30),
            Text(
              'Thank you for using Task Manager!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const FeatureItem({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.blue,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            ),
          ),
        ],
      ),
    );
  }
}
