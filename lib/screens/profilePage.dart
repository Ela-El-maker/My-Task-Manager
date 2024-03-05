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
//
// import 'package:flutter/material.dart';
// import '../app_constraints/constant.dart';
//
// class MyProfilePage extends StatelessWidget {
//   const MyProfilePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     var he = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       backgroundColor: Color.fromARGB(190, 65, 65, 66),
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.only(
//               left: he * 0.03,
//               right: he * 0.03,
//               top: he * 0.03,
//               bottom: he * 0.03),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 15),
//               Text(
//                 "FirstName",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: he * 0.01,
//               ),
//               SizedBox(
//                 height: he * 0.045,
//                 child: TextFormField(
//                     decoration: InputDecoration(
//                       contentPadding: EdgeInsets.only(left: 10, top: 12),
//                       hintText: "John",
//                       hintStyle: TextStyle(
//                         color: const Color.fromARGB(255, 93, 89, 89),
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                     )),
//               ),
//               SizedBox(
//                 height: he * 0.02,
//               ),
//               Text(
//                 "LastName",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: he * 0.01,
//               ),
//               SizedBox(
//                 height: he * 0.045,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.only(left: 10, top: 12),
//                     hintText: "Doe",
//                     hintStyle: TextStyle(
//                       color: const Color.fromARGB(255, 93, 89, 89),
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: MyThemeColor.textColor,
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: MyThemeColor.textColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: he * 0.02,
//               ),
//               Text(
//                 "Username",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: he * 0.25,
//                     height: he * 0.045,
//                     child: TextFormField(
//                       keyboardType: TextInputType.name,
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.only(left: 10, top: 12),
//                         hintText: "johndoe",
//                         hintStyle: TextStyle(),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Change",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 11, 205, 30),
//                       ),
//                     ),
//                   ),
//                   Icon(
//                     Icons.edit,
//                     color: Colors.blueAccent,
//                     size: 20,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: he * 0.02,
//               ),
//               Text(
//                 "Phone Number",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: he * 0.25,
//                     height: he * 0.045,
//                     child: TextFormField(
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.only(left: 10, top: 12),
//                         hintText: "+2547000000000",
//                         hintStyle: TextStyle(),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Change",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 11, 205, 30),
//                       ),
//                     ),
//                   ),
//                   Icon(
//                     Icons.edit,
//                     color: Colors.blueAccent,
//                     size: 20,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: he * 0.02,
//               ),
//               Text(
//                 "Email Address",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: he * 0.25,
//                     height: he * 0.045,
//
//                     child: TextFormField(
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.only(left: 10, top: 12),
//                         hintText: "johndoe@gmail.com",
//                         hintStyle: TextStyle(),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: MyThemeColor.textColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Change",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 11, 205, 30),
//                       ),
//                     ),
//                   ),
//                   Icon(
//                     Icons.arrow_forward_ios_outlined,
//                     color: Colors.blueAccent,
//                     size: 20,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: he * 0.02,
//               ),
//               Divider(
//                 color: Colors.grey[200],
//                 thickness: 1,
//               ),
//               SizedBox(
//                 height: he * 0.01,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     "Add Account",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   Expanded(child: Container()),
//                   Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.blueAccent,
//                     size: 18,
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: he * 0.02,
//               ),
//               Row(children: [
//                 Text(
//                   "Switch Account",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//                 Expanded(child: Container()),
//                 Icon(
//                   Icons.arrow_forward_ios,
//                   color: Colors.blueAccent,
//                   size: 18,
//                 ),
//               ]),
//               SizedBox(height: he * 0.01),
//               GestureDetector(
//                 onTap: () {},
//                 child: Text(
//                   "Log Out",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                     color: Color.fromARGB(255, 42, 183, 190),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
