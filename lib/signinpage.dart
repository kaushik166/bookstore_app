import 'package:bookstore/signuppage.dart';
import 'package:flutter/material.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
                "Sign in",
                style: TextStyle(
                    fontFamily: "lato",
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
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
                        hintText: "Optional Group Special Code"),
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
                        border: InputBorder.none, hintText: "Email Address"),
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
                    "Stay Logged In",
                    style: TextStyle(fontFamily: "lato", color: Colors.black54),
                  ),
                  Spacer(),
                  Text(
                    "Forgot Your Password?",
                    style: TextStyle(fontFamily: "lato", color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  isSelected = true;
                  setState(() {});
                },
                child: isSelected
                    ? Container(
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(5, 8),
                                color: Color(0xff5ABD8C),
                                blurRadius: 13)
                          ],
                          color: Color(0xff5ABD8C),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontFamily: "lato",
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
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
                              "Sign In",
                              style: TextStyle(
                                  fontFamily: "lato",
                                  color: Color(0xff5ABD8C),
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
