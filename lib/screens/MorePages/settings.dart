import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildSettingItem(
              context,
              'Dark Mode',
              'Enable or disable dark mode',
              Switch(
                value: false, // Replace with actual value and onChanged handler
                onChanged: (value) {
                  // Implement dark mode toggle logic
                },
                activeColor: Colors.blueAccent,
              ),
            ),
            _buildSettingItem(
              context,
              'Notifications',
              'Manage notifications',
              Icon(Icons.notifications, color: Colors.blueAccent),
              onTap: () {
                // Navigate to notification settings page
              },
            ),
            _buildSettingItem(
              context,
              'Language',
              'Select app language',
              Row(
                children: [
                  Text(
                    'English',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward, color: Colors.blueAccent),
                ],
              ),
              onTap: () {
                // Navigate to language selection page
              },
            ),
            _buildSettingItem(
              context,
              'Feedback',
              'Send us your feedback',
              Icon(Icons.feedback, color: Colors.blueAccent),
              onTap: () {
                // Navigate to feedback page
              },
            ),
            _buildSettingItem(
              context,
              'About',
              'Learn more about the app',
              Icon(Icons.info_outline, color: Colors.blueAccent),
              onTap: () {
                // Navigate to about page
              },
            ),
            _buildSettingItem(
              context,
              'Terms of Service',
              'Read our terms of service',
              Icon(Icons.description, color: Colors.blueAccent),
              onTap: () {
                // Navigate to terms of service page
              },
            ),
            _buildSettingItem(
              context,
              'Privacy Policy',
              'View our privacy policy',
              Icon(Icons.privacy_tip, color: Colors.blueAccent),
              onTap: () {
                // Navigate to privacy policy page
              },
            ),
            // Add more setting items as needed
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(
      BuildContext context, String title, String subtitle, Widget trailing,
      {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}
