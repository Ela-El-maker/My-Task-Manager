import 'package:flutter/material.dart';
import 'package:taskify/models/taskModel.dart';
import './datePicker.dart';
import './taskTitle.dart';
import './taskTimeLine.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DatePicker(), TaskTitle()
                ],
              ),
            ),
          ),
          detailList == null
          
         ? SliverFillRemaining(
                child: Container(
                  color: Colors.white,
                  height: 200,
                  child: Center(
                    child: Text(
                      "No Tasks yet",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                ),
              )
              : SliverList(delegate: SliverChildBuilderDelegate((context, index) => TaskTimeLine(detailList[index]), childCount: detailList.length ))
        //  : TimeLine(detailList)
        
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      actions: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.more_vert),
          iconSize: 20,
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${task.title} Task',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'You have ${task.left} tasks to do',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
