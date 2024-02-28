import 'package:get/get.dart';
import 'package:taskify/screens/LoginPages/loginPage.dart';
import 'package:taskify/screens/LoginPages/signUpPage.dart';
import 'package:taskify/screens/PremiumPages/premiumHome.dart';
import 'package:taskify/screens/homePage.dart';
import 'package:taskify/screens/profilePage.dart';

final List<GetPage> routes = [
  GetPage(name: '/', page: () => const LoginPage()),
  GetPage(name: '/signup', page: () => const SignUpPage()),
  GetPage(name: '/home', page: () => const MyHomePage()),
  GetPage(name: '/profile', page: () => const MyProfilePage()),
  

  
];