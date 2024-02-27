import 'package:flutter/material.dart';
import 'package:taskify/app_constraints/constant.dart';
import 'package:taskify/screens/MenuPage.dart';
import 'package:taskify/screens/premium.dart';
import 'package:taskify/screens/profilePage.dart';
import 'package:taskify/app_constraints/tasks.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _pages = [
    HomePage(),
    MyProfilePage(),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: kDark, // Dark mode background color
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_rounded,
                  size: 30,
                ),
                label: "Profile",
              ),
            ],
            onTap: (index) {
              setState(() {
                activeIndex = index;
                // _currentIndex = index;
                
              }
            );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: kBlueDark,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[activeIndex],
      backgroundColor:
          Color.fromARGB(190, 65, 65, 66), // Dark mode background color
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kDark, // Dark mode background color
    title: Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            left: 10,
            top: 5,
            // bottom: 5,
          ),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/ela.png'),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Text(
          "Hello, Ela",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/menu_page',
          );
        },
        icon: const Icon(
          Icons.more_vert,
          color: Colors.grey,
          size: 35,
        ),
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
          child: const GoPremium(),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: const Text(
            "Tasks",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Tasks(),
        ),
      ],
    );
  }
}
