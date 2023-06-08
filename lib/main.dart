import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationDemo(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? colorAnimation;
  Animation? sizeAnimation;
  Animation? sizeAnimation2;

  @override
  void initState() {
    super.initState();

    //Defining controller with animation duration of two seconds
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    //  Defining both color and size animations
    colorAnimation =
        ColorTween(begin: Colors.blue, end: Colors.yellow).animate(controller!);
    sizeAnimation =
        Tween<double>(begin: 100.0, end: 200.0).animate(controller!);

    //  Rebuilding the screen when animation goes ahead
    controller!.addListener(() {
      setState(() {});
    });

    //Repeat the animation after finish
    controller!.repeat();

    // For single time
    controller?.forward();

    //  Reverses the animation instead of starting it again and repeats
    controller?.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Demo"),
      ),
      body: Center(
        child: Container(
          height: sizeAnimation!.value,
          width: sizeAnimation!.value,
          color: colorAnimation!.value,
        ),
      ),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({Key? key}) : super(key: key);

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? sizeAnimation;
  Animation? colorAnimation;
  Animation? sizeAnimation2;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 9),
    );
    sizeAnimation =
        Tween<double>(begin: 100, end: 250).animate(animationController!);
    sizeAnimation2 =
        Tween<double>(begin: 150, end: 250).animate(animationController!);
    colorAnimation = ColorTween(begin: Colors.black, end: Colors.teal)
        .animate(animationController!);

    animationController!.forward();
    // animationController!.repeat();

    animationController!.addListener(() {
      setState(() {});
      // print("=======> ${sizeAnimation!.value}");
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: sizeAnimation!.value,
          width: sizeAnimation2!.value,
          color: colorAnimation!.value,
        ),
      ),
    );
  }
}

class DemoAnimation extends StatefulWidget {
  const DemoAnimation({Key? key}) : super(key: key);

  @override
  State<DemoAnimation> createState() => _DemoAnimationState();
}

class _DemoAnimationState extends State<DemoAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset("assets/images/99703-heart-lottie-animation.json",
              reverse: true),
          Lottie.asset("assets/images/95910-heart-love-animation.json",
              fit: BoxFit.fill),
        ],
      ),
    );
  }
}
