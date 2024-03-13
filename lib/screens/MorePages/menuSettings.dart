import 'package:flutter/material.dart';

class MenuSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Menu',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildMenuItem(
              context,
              'Settings',
              Icons.settings,
              () {
                // Navigate to settings page
              },
            ),
            _buildMenuItem(
              context,
              'About',
              Icons.info,
              () {
                // Navigate to about page
              },
            ),
            _buildMenuItem(
              context,
              'Share',
              Icons.share,
              () {
                // Share app functionality
              },
            ),
            _buildMenuItem(
              context,
              'Rate Us',
              Icons.star,
              () {
                // Rate app functionality
              },
            ),
            _buildMenuItem(
              context,
              'Contact Us',
              Icons.email,
              () {
                // Contact us functionality
              },
            ),
            // Add more menu items as needed
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, IconData iconData,
      VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
