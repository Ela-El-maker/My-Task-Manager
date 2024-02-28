import 'package:flutter/material.dart';

class PremiumHome extends StatefulWidget {
  const PremiumHome({super.key});

  @override
  State<PremiumHome> createState() => _PremiumHomeState();
}

class _PremiumHomeState extends State<PremiumHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premium'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(121, 73, 50, 50),
        toolbarHeight: 70,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ), onPressed: () { 
            Navigator.pop(context);
           },
        ),
      ),
      body: Center(
        child: Text('Premium'),
      ),
    );
  }
}