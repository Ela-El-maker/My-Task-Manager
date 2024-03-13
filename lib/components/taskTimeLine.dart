import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget {
  final Map<String, dynamic> details;
  TaskTimeLine(this.details);
  // const TaskTimeLine({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          _buildTimeLine(details['tlColor']),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  details['time'],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                details['title'].isNotEmpty
                    ? _buildCard(
                        details['bgColor'],
                        details['title'],
                        details['slot'],
                      )
                    : _buildCard(
                        Colors.white,
                        details['title'],
                        details['slot'],
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(Color bgColor, String title, String slot) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),

        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade900,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              slot,
              style: TextStyle(
                color: Colors.grey.shade900,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),   
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeLine(Color color) {
    return Container(
      width: 20,
      height: 115,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        indicatorStyle: IndicatorStyle(
            indicatorXY: 0,
            width: 20,
            indicator: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: color, width: 5),
                shape: BoxShape.circle,
              ),
            )),
        afterLineStyle: LineStyle(
          color: color,
          thickness: 2,
        ),
        isFirst: true,
      ),
    );
  }
}
