import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationDemoPage extends StatefulWidget {
  const AnimationDemoPage({Key? key}) : super(key: key);

  @override
  State<AnimationDemoPage> createState() => _AnimationDemoPageState();
}

class _AnimationDemoPageState extends State<AnimationDemoPage>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? sizeAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    sizeAnimation =
        Tween<double>(end: 150, begin: 1).animate(animationController!);

    animationController!.repeat(reverse: true);

    animationController!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: sizeAnimation!.value,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(
                    width: sizeAnimation!.value,
                  ),
                ],
              ),
              SizedBox(
                height: sizeAnimation!.value,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: sizeAnimation!.value,
                  ),
                  Lottie.asset("assets/images/95521-smiles-all-around.json",
                      height: 60, width: 60),
                  // Container(
                  //   height: 40,
                  //   width: 40,
                  //   decoration: BoxDecoration(
                  //       color: Colors.pinkAccent, shape: BoxShape.circle),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       Container(
                  //         height: 10,
                  //         width: 10,
                  //         decoration: const BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 10,
                  //         width: 10,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Spacer(),
                  // Container(
                  //   height: 40,
                  //   width: 40,
                  //   decoration: BoxDecoration(
                  //       color: Colors.pinkAccent, shape: BoxShape.circle),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       Container(
                  //         height: 10,
                  //         width: 10,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 10,
                  //         width: 10,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Lottie.asset("assets/images/95521-smiles-all-around.json",
                      height: 60, width: 50),
                  SizedBox(
                    width: sizeAnimation!.value,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //Spacer(),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(
                height: sizeAnimation!.value,
              ),
              Row(
                children: [
                  SizedBox(
                    width: sizeAnimation!.value,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(
                    width: sizeAnimation!.value,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
