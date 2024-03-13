import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Help',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildHelpItem(
              context,
              'FAQs',
              Icons.question_answer,
              () {
                // Navigate to FAQs page
              },
            ),
            _buildHelpItem(
              context,
              'Support',
              Icons.headset_mic,
              () {
                // Navigate to support page
              },
            ),
            _buildHelpItem(
              context,
              'Report a Problem',
              Icons.report_problem,
              () {
                // Navigate to report problem page
              },
            ),
            _buildHelpItem(
              context,
              'Contact Us',
              Icons.email,
              () {
                // Navigate to contact us page
              },
            ),
            _buildHelpItem(
              context,
              'Rate Us',
              Icons.star,
              () {
                // Navigate to rate us page
              },
            ),
            // Add more help items as needed
          ],
        ),
      ),
    );
  }

  Widget _buildHelpItem(BuildContext context, String title, IconData iconData,
      VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
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
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
