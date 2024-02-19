import 'package:flutter/material.dart';
import 'package:taskify/widgets/constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Color.fromARGB(132, 62, 61, 61),
    elevation: 0,
    title: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 10,
            top: 5,
            // bottom: 5,
          ),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kBlue,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ],
    ),
  );
}
