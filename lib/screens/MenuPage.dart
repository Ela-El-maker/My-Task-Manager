import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:taskify/app_constraints/constant.dart';
import 'package:taskify/screens/homePage.dart';
import 'package:taskify/screens/profilePage.dart';

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
      
      // appBar: AppBar(
      //   title: Text("Menu"),
      //   centerTitle: true,
      //   backgroundColor: Color.fromARGB(255, 211, 211, 211),
      //   toolbarHeight: he * 0.1,
      // ),
    backgroundColor: kDark,
    body: ColorfulSafeArea(
     color: Colors.black26,
     
        child: 
        Padding(
        padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: he * 0.05),
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
                      Icons.close_rounded,
                      size: he * 0.05,
                      color: Color.fromARGB(255, 211, 211, 211),
                    ),
                  )
                  // IconButton(
                  //   icon: Icon(Icons.home),
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => HomePage(),
                  //       ),
                  //     );
                  //   }),
                ],
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // children: [
                //   IconButton(
                //     icon: Icon(Icons.home),
                //     onPressed: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => HomePage(),
                //         ),
                //       );
                //     },
                //   ),
                //   IconButton(
                //     icon: Icon(Icons.person),
                //     onPressed: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => MyProfilePage(),
                //         ),
                //       );
                //     },
                //   ),
                // ],
              ),
            )
          ]
        ),
      ),
    ),
    
    );
  }
}