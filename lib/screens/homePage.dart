import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:taskify/app_constraints/customDialog.dart';
import 'package:taskify/screens/profilePage.dart';
import '../app_constraints/constant.dart';
import 'MenuPage.dart';
import 'PremiumPages/premium.dart';
import 'Tasks/tasks.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _pages = [
    HomePage(),
    MyProfilePage(),
  ];
  int activeIndex = 0;
  bool _isVisible = true;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (_isVisible) {
        setState(() {
          _isVisible = false;
        });
      }
    } else {
      if (!_isVisible) {
        setState(() {
          _isVisible = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: _isVisible ? kBottomNavigationBarHeight : 0,
        child: CurvedNavigationBar(
          backgroundColor: kDark, // Dark mode background color
          color: kBlueLight2,
          buttonBackgroundColor: kTealDark,
          height: kBottomNavigationBarHeight,
          index: activeIndex,
          items: const <Widget>[
            Icon(
              Icons.home_rounded,
              size: 50,
              color: Colors.white,
            ),
            Icon(
              Icons.person_rounded,
              size: 50,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomDialog(
                content: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Task',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Task Name',
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Task Description',
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Due Date',
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Due Time',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            hintText: 'Priority',
                          ),
                          value: null,
                          items: ['High', 'Medium', 'Low'].map((priority) {
                            return DropdownMenuItem(
                              value: priority,
                              child: Text(priority),
                            );
                          }).toList(),
                          onChanged: (value) {
                            // Handle priority selection
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Category/Tags',
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Implement task addition logic here
                            Navigator.pop(context); // Close the dialog
                          },
                          child: Text('Add Task'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(
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

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kDark, // Dark mode background color
      toolbarHeight: 100,
      title: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              top: 5,
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
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 1000),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween(begin: Offset(1.0, 0.0), end: Offset.zero)
                        .animate(animation),
                    child: child,
                  );
                },
                pageBuilder: (context, animation, secondaryAnimation) =>
                    menuPage(),
              ),
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
