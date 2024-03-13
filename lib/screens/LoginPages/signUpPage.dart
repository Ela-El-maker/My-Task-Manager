import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskify/app_constraints/constant.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key, this.title});

  final String? title;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _signInKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =TextEditingController();
  final RegExp emailValid =
      RegExp(r"^[a-zA-Z0-9.!#%&_^?+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: kDark,
      body: SingleChildScrollView(
        child: Form(
          key: _signInKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/pngwing.com(16).png',
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                "Sign up to Taskify...",
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    hintText: "Username",
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Confirm Password",
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    } else if (value != _passwordController.text) {
                      return 'Passwords do not match';
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
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: TextButton(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      // Check if email and password are not empty
                      if (_signInKey.currentState!.validate()) {
                        String email = _emailController.text;
                        //String username = _usernameController.text;
                        String password = _passwordController.text;
                        String confirmPassword = _confirmPasswordController.text;

                        // Check if email and password are not empty
                        if (email.isNotEmpty && password.isNotEmpty) {
                          // Check if the password matches the confirmed password (if applicable)
                          if (confirmPassword.isNotEmpty && password != confirmPassword) {
                            // Show error message if passwords do not match
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Passwords do not match.'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          } else {
                            // Navigate to home screen if login is successful
                            Get.toNamed('/');
                          }
                        } else {
                          // Show error message if email or password is empty
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please enter both email and password.'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        }
                      }

                    },
                  ),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.pop(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => LoginPage(),
                  //   ),
                  // );
                  Get.toNamed('/');
                },
                child: Text(
                  "Already have an account? Log In",
                  style: TextStyle(
                    color: kBlueLight2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
