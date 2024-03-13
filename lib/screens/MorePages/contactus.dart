import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildContactItem(
              context,
              'Email',
              'support@example.com',
              Icons.email,
              () {
                _sendEmail('support@example.com');
              },
            ),
            _buildContactItem(
              context,
              'Phone',
              '+1 (123) 456-7890',
              Icons.phone,
              () {
                _makePhoneCall('+11234567890');
              },
            ),
            _buildContactItem(
              context,
              'Address',
              '123 Main Street, City, Country',
              Icons.location_on,
              () {
                _openMaps('123 Main Street, City, Country');
              },
            ),
            // Add more contact items as needed
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(BuildContext context, String title, String subtitle, IconData iconData, VoidCallback onTap) {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _sendEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  void _makePhoneCall(String phoneNumber) async {
    final Uri _phoneLaunchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunch(_phoneLaunchUri.toString())) {
      await launch(_phoneLaunchUri.toString());
    } else {
      throw 'Could not launch $_phoneLaunchUri';
    }
  }

  void _openMaps(String address) async {
    final Uri _mapsLaunchUri = Uri(
      scheme: 'https',
      host: 'www.google.com',
      path: '/maps/search/',
      queryParameters: {
        'query': address,
      },
    );
    if (await canLaunch(_mapsLaunchUri.toString())) {
      await launch(_mapsLaunchUri.toString());
    } else {
      throw 'Could not launch $_mapsLaunchUri';
    }
  }
}
