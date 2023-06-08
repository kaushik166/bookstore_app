import 'package:flutter/material.dart';

import 'bottombar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(0xff5ABD8C),
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontFamily: "lato",
                      fontWeight: FontWeight.w800,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "First & Last Name"),
                      style: TextStyle(fontFamily: "lato", fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Email"),
                      style: TextStyle(fontFamily: "lato", fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Mobile Phone"),
                      style: TextStyle(fontFamily: "lato", fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Group Special Code (optional)"),
                      style: TextStyle(fontFamily: "lato", fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Password"),
                      style: TextStyle(fontFamily: "lato", fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Color(0xff5ABD8C),
                      value: isSelected,
                      onChanged: (bool? k) {
                        isSelected = k!;
                        setState(() {});
                      },
                    ),
                    Text(
                      "Please sign me up for the monthly newsletter",
                      style:
                          TextStyle(fontFamily: "lato", color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomBarPage(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff5ABD8C),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: "lato",
                            color: Color(0xff5ABD8C),
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
