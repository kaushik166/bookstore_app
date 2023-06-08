import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> globalkey = GlobalKey<ScaffoldState>();
  List<Map<String, dynamic>> list = [
    {
      "image": "assets/images/Dissapearance of Emile Zola.png",
      "name": "The Disappearance of Emila Zola",
      "name2": "Michael Rosen"
    },
    {
      "image": "assets/images/Fatherhood.png",
      "name": "Fatherhood",
      "name2": "Marcus Berkmann"
    },
    {
      "image": "assets/images/How To Be The Best In Time And Space.png",
      "name": "The Time Travellers Handbook",
      "name2": "Stride Lottie"
    },
  ];
  List<Map<String, dynamic>> list2 = [
    {
      "image": "assets/images/The Zoo.png",
      "name": "Fatherhood",
      "name2": "by Christopher Wilson"
    },
    {
      "image": "assets/images/In A Land Of Paper Gods.png",
      "name": "In A land Of Paper Gods",
      "name2": "by Rebecca Mackenzie"
    },
    {
      "image": "assets/images/Tattletale.png",
      "name": "Tattletale",
      "name2": "by Sarah J. Noughton"
    },
  ];
  List<Map<String, dynamic>> list3 = [
    {
      "image": "assets/images/The Fatal Tree.png",
      "name": "The Fatal Tree",
      "name2": "by Jake Amott"
    },
    {
      "image": "assets/images/Day Four.png",
      "name": "Day Four",
      "name2": "by LOTS,SARAH"
    },
    {
      "image": "assets/images/D2D.png",
      "name": "Door to Door",
      "name2": "by Edward Humes"
    },
  ];
  List<Map<String, dynamic>> list4 = [
    {"name": "Home", "name2": "home"},
    {"name": "Our Books", "name2": "book open"},
    {"name": "Our Stores", "name2": "store"},
    {"name": "Careers", "name2": "briefcase"},
    {"name": "Sell with Us", "name2": "dollar"},
    {"name": "", "name2": "Sign"},
    {"name": "", "name2": "Newsletter"},
    {"name": "", "name2": "Newspaper"},
  ];

  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalkey,
      resizeToAvoidBottomInset: false,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
            //color: Colors.orange,
          ),
          const Positioned(
            top: -150,
            left: -40,
            right: -40,
            child: CircleAvatar(
              radius: 250,
              backgroundColor: Color(0xff5ABD8C),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Our Top Picks",
                          style: TextStyle(
                              fontFamily: "lato",
                              fontSize: 30,
                              color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {
                            globalkey.currentState!.openEndDrawer();
                          },
                          icon: const Icon(
                            Icons.menu_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        list.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Column(
                            children: [
                              Image.asset(
                                list[index]["image"],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  list[index]["name"],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily: "lato",
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                list[index]["name2"],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: "lato",
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text(
                          "Bestsellers",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "lato",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: List.generate(
                        list2.length,
                        (index) => Column(
                          children: [
                            Image.asset(
                              list2[index]["image"],
                            ),
                            Text(
                              list2[index]["name"],
                              style: const TextStyle(
                                  fontFamily: "lato",
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              list2[index]["name2"],
                              style: const TextStyle(fontFamily: "lato"),
                            ),
                            Row(
                              children: List.generate(
                                5,
                                (index) => const Icon(
                                  Icons.star,
                                  color: Color(0xff5ABD8C),
                                  size: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text(
                          "Genres",
                          style: TextStyle(
                              fontFamily: "lato",
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 230,
                            width: 300,
                            decoration: BoxDecoration(
                              color: const Color(0xff1C4A7E),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                Image.asset("assets/images/books.png"),
                                const Text(
                                  "Graphic Novels",
                                  style: TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 230,
                            width: 300,
                            decoration: BoxDecoration(
                              color: const Color(0xffC65135),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset("assets/images/books.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text(
                          "Recently Viewed",
                          style: TextStyle(
                              fontFamily: "lato",
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => Column(
                          children: [
                            Image.asset(
                              list3[index]["image"],
                            ),
                            Text(
                              list3[index]["name"],
                              style: const TextStyle(
                                  fontFamily: "lato",
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              list3[index]["name2"],
                              style: const TextStyle(fontFamily: "lato"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text(
                          "Monthly Newsletter",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "lato",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 230,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Receive our monthly Newsletter and receive updates\n on new stock,books and the occasional promotion.",
                                style: TextStyle(
                                    fontFamily: "lato",
                                    fontSize: 14,
                                    color: Colors.black45),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Name",
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Email Address",
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -20,
                          right: 30,
                          child: Container(
                            height: 38,
                            width: 200,
                            decoration: BoxDecoration(
                              color: const Color(0xff5ABD8C),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(3, 3),
                                    color: Color(0xff5ABD8C),
                                    blurRadius: 7)
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(250),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Column(
                  children: List.generate(
                    list4.length,
                    (index) => GestureDetector(
                      onTap: () {
                        selected = index;
                        setState(() {});
                      },
                      child: index == selected
                          ? Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff5ABD8C),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 17,
                                    offset: Offset(1, 4),
                                    color: Color(0xff5ABD8C),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      list4[index]["name"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "lato",
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      list4[index]["name2"],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "lato"),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(
                              height: 50,
                              color: Colors.transparent,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      list4[index]["name"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "lato",
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      list4[index]["name2"],
                                      style: TextStyle(
                                          color: Color(0xff5ABD8C),
                                          fontSize: 20,
                                          fontFamily: "lato"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Cog",
                      style: TextStyle(
                          fontFamily: "lato",
                          color: Colors.black45,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Terms",
                      style: TextStyle(
                          fontFamily: "lato",
                          color: Colors.black45,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Privacy",
                      style: TextStyle(
                          fontFamily: "lato",
                          color: Colors.black45,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
