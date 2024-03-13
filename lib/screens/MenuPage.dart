import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taskify/screens/MorePages/about.dart';
import 'package:taskify/screens/MorePages/contactus.dart';
import 'package:taskify/screens/MorePages/helpPage.dart';
import 'package:taskify/screens/MorePages/menuSettings.dart';
import 'package:taskify/screens/MorePages/settings.dart';

import '../app_constraints/constant.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kDark,
      body: ColorfulSafeArea(
        color: Colors.black26,
        child: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: he * 0.03, bottom: he * 0.03),
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: Icon(
                          Icons.clear,
                          size: he * 0.05,
                          color: Color.fromARGB(255, 211, 211, 211),
                        ),
                      ),
                      SizedBox(
                        width: he * 0.01,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: he * 0.13),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      MenuSettingsPage(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 1000),
                    );
                  },
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: he * 0.01),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      ContactUsPage(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 1000),
                    );
                  },
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: he * 0.01),
                GestureDetector(
                  child: const Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Get.to(
                      AboutPage(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 1000),
                    );
                  },
                ),
                SizedBox(height: he * 0.01),
                GestureDetector(
                  child: const Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Get.to(
                      SettingsPage(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 1000),
                    );
                  },
                ),
                SizedBox(height: he * 0.01),
                GestureDetector(
                  child: const Text(
                    "Help",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Get.to(
                      HelpPage(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 1000),
                    );
                  },
                ),
                SizedBox(height: he * 0.01),
                GestureDetector(
                  onTap: (SystemNavigator.pop),
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
