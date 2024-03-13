import 'package:flutter/material.dart';


class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final day = ['11', '12', '13', '14', '15', '16', '17'];
  var selectedDay = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),

      ),
      child: ListView.separated(itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedDay = index;
          });
        },
        
        child: Container(
          padding: EdgeInsets.only(right: 10,left: 10,bottom: 10,top: 25),
          margin: EdgeInsets.symmetric(
            horizontal: 0.5,
          ),
          decoration: BoxDecoration(
            color: selectedDay == index ? Colors.grey.withOpacity(0.3) : null,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            ),
            child: Column(
              children: [
                Text(
                  weekDays[index],
                  style: TextStyle(
                    color: selectedDay == index? Colors.black : null,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  day[index],
                  style: TextStyle(
                    color: selectedDay == index? Colors.black : null,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
        ),
      ), separatorBuilder: (_,index)=> SizedBox(
        width: 10,
      ), itemCount: weekDays.length,),
    );
  }
}
