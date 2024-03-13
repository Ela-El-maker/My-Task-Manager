import 'package:flutter/material.dart';
import 'package:taskify/app_constraints/constant.dart';
import 'package:taskify/screens/PremiumPages/premiumHome.dart';

class GoPremium extends StatefulWidget {
  const GoPremium({super.key});

  @override
  State<GoPremium> createState() => _GoPremiumState();
}

class _GoPremiumState extends State<GoPremium> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.all(
              // he * 0.004
              he * 0.005,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(
              //     // he * 0.02
              //     he * 0.02
              //   ),
              borderRadius:
                  BorderRadius.circular(he * 0.02), // Make all corners rounded

              gradient: const LinearGradient(
                colors: [
                  Color(0xFFD4AF37),
                  Color(0xFFFF5A09),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(he * 0.02),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(he * 0.012),
              child: Row(
                children: [
                  Container(
                    height: he * 0.05,
                    // height: 40,
                    width: he * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(he * 0.02),
                      color: Colors.grey[300],
                    ),
                    child: const ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Color.fromARGB(255, 204, 198, 198),
                        BlendMode.srcATop,
                      ),
                      child: Icon(
                        Icons.workspace_premium_outlined,
                        size: 30,
                        color: MyThemeColor.textColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: he * 0.015,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Go Premium",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Get access to all features \nand unlimited downloads",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PremiumHome()),
                      );
                      
                    },
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
