// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:taskify/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   //title: 'Flutter Demo',

    //   routes: {
    //     '/login': (context) => LoginPage(),
    //     '/my_home-page':(context) => MyHomePage(),
    //     '/menu_page':(context) => menuPage(),
    //   },
    //   home: LoginPage(),
    // );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome to Taskify",
      initialRoute: '/',
      getPages: routes,
    );
  }
}
