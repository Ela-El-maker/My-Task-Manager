import 'package:flutter/material.dart';
import 'package:taskify/app_constraints/constant.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: kDark,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
      ),
      ),
        centerTitle: true,
        backgroundColor: kDark,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    ),
    );
  }
}
