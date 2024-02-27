import 'package:flutter/material.dart';
import 'package:taskify/app_constraints/constant.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  bool isSwitched = true;
  bool isSound = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: kDark,
    ),
    );
  }
}
