import 'package:flutter/material.dart';
import 'package:taskify/widgets/constant.dart';


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
            he * 0.004
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                he * 0.02
              ),
             
            ),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFDC830),
                Color(0xFFF37335),
              ],
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(he * 0.02),
              color: Colors.grey[300],
            ),

            padding: EdgeInsets.all(
              he * 0.012
            ),
            child: Row(
              children: [
                Container(
                  height: he * 0.05,
                  width : he * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(he * 0.02),
                    color: Colors.grey[300],
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 204, 198, 198),
                      BlendMode.srcATop,
                    ),
                    child: Icon(
                      Icons.workspace_premium_outlined,
                      size: 30,
                      // size: he * 0.03,
                      color: Colors.MyThemeColor.textColor,
                    ),
                    )
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}