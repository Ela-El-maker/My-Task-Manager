import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taskify/app_constraints/constant.dart';
import 'package:taskify/screens/LoginPages/signUpPage.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.title});

  final String? title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _signInKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final RegExp emailValid =
      RegExp(r"^[a-zA-Z0-9.!#%&_^?+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDark,
      body: Form(
        key: _signInKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Image.asset(
              'assets/images/pngwing.com(16).png',
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),

            const Text(
              "Log in to Taskify...",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: "Enter your email",
                  border: InputBorder.none,
                  
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal:30),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Email address';
                  } else if (!emailValid.hasMatch(value)) {
                    return 'Please enter a valid Email address';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                  
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal:30),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              width: 200,
              // margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              // padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: kBlueLight2,
                borderRadius: BorderRadius.all(Radius.circular(30)),),
              child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => LoginPage(),
                  //   ),
                  // );
                  if (_signInKey.currentState!.validate()) {
                    debugPrint("Email : ${_emailController.text}");
                    debugPrint("Password : ${_passwordController.text}");
                  }
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
               },
              child: const Text(
                "Don't have an account? Sign up here",
                style: TextStyle(
                  color: kBlueLight2,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
