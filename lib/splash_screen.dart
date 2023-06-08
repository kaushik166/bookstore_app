import 'package:flutter/material.dart';

import 'loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int isIntro = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  isIntro = value;
                  setState(() {});
                },
                children: const [
                  Intro1(),
                  Intro2(),
                  Intro3(),
                  LoginPage(),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: index == isIntro
                      ? const CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xff5ABD8C),
                        )
                      : const CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xffAFDFC7),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Discounted\nSecondhand books",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xff5ABD8C),
              fontSize: 30,
              fontFamily: "lato",
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "Used and near new secondhand books at great prices.",
          style: TextStyle(
              color: Color(0xff5ABD8C), fontFamily: "lato", fontSize: 16),
        ),
        const Spacer(),
        Image.asset("assets/images/Bibliophile.png"),
        const Spacer(),
      ],
    );
  }
}

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          "20 Books Grocers\nNationally",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xff5ABD8C),
              fontSize: 30,
              fontFamily: "lato",
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "We've successfully opened 20 stores across Australia.",
          style: TextStyle(
              color: Color(0xff5ABD8C), fontFamily: "lato", fontSize: 16),
        ),
        const Spacer(),
        Image.asset("assets/images/business_shop.png"),
        const Spacer(),
      ],
    );
  }
}

class Intro3 extends StatelessWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Sell or Recycle Your Old\nBooks With Us",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xff5ABD8C),
              fontSize: 30,
              fontFamily: "lato",
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "If you're looking to downsize, sell or recycle old \n books, the Book Grocer can help.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff5ABD8C),
            fontFamily: "lato",
            fontSize: 16,
          ),
        ),
        const Spacer(),
        Image.asset("assets/images/collecting_fjjl.png"),
        const Spacer(),
      ],
    );
  }
}
