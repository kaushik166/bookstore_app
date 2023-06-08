import 'package:bookstore/signinpage.dart';
import 'package:bookstore/signuppage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Book For\nEvery Test.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "lato",
                    fontSize: 45,
                    color: Color(0xff5ABD8C),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingInPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff5ABD8C),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontFamily: "lato",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff5ABD8C),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontFamily: "lato",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: -40,
            child: Image.asset("assets/images/dally.png"),
          ),
          Positioned(
            right: -40,
            top: 180,
            child: Image.asset("assets/images/leaf2.png"),
          ),
          Positioned(
            right: -70,
            top: 50,
            child: Image.asset("assets/images/leaf.png"),
          ),
          Positioned(
            bottom: -50,
            left: -20,
            right: 100,
            child: Image.asset("assets/images/book.png"),
          ),
        ],
      ),
    );
  }
}
