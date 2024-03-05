// import 'package:flutter/material.dart';
// import '../components/customText.dart';
//
// Widget upperHeader(String text, BuildContext context, bool isIcon, Widget page) {
//   var he = MediaQuery.of(context).size.height;
//
//   return Padding(
//     padding: EdgeInsets.only(top: he * 0.03),
//     child: Row(
//       children: [
//         GestureDetector(
//           onTap: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) => page));
//           },
//           child: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//             size: 30,
//           ),
//         ),
//         SizedBox(
//           width: he*0.03,
//           ), // Add some space between the icon and the text
//         CustomText(
//             text: text,
//             size: 28,
//           ),
//
//         Expanded(
//           child: Container(),
//         ),
//         isIcon ? Icon(
//           Icons.search,
//           color: Colors.black,
//           size: 30,
//         ) : Container(),
//       ],
//     ),
//   );
// }
import 'package:flutter/material.dart';
import '../components/customText.dart';

Widget upperHeader(String text, BuildContext context, bool isIcon, Widget page) {
  var he = MediaQuery.of(context).size.height;

  return Padding(
    padding: EdgeInsets.only(top: he * 0.03),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
        SizedBox(
          width: he*0.03,
        ), // Add some space between the icon and the text
        CustomText(
          text: text,
          size: 28,
        ),

        Expanded(
          child: Container(),
        ),
        isIcon ? Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ) : Container(),
      ],
    ),
  );
}
