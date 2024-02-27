// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskify/screens/LoginPages/loginPage.dart';
import 'package:taskify/screens/MenuPage.dart';
import 'package:taskify/screens/homePage.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSwatch(
      //     primarySwatch: Colors.blue,
      //   ).copyWith(
      //     secondary: const Color.fromARGB(255, 205, 209, 217),
      //   ),
      //   useMaterial3: true,
      // ),
      
      routes: {
        '/login': (context) => LoginPage(),
        '/my_home-page':(context) => MyHomePage(),
        '/menu_page':(context) => menuPage(),
      },
      home: LoginPage(),
    );
  }
}
