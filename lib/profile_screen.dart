import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List list = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png"
  ];
  List<Map<String, dynamic>> list2 = [
    {
      "name":
          "A must read for everybody. This\n book taught me so many things\n about...",
      "image": "assets/images/1.png",
    },
    {
      "name": "Unbelievable value.next level\nstorytelling",
      "image": "assets/images/2.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Color(0xff5ABD8C),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Will Newman",
                          style: TextStyle(fontSize: 30, fontFamily: "lato"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Constantly travelling and keeping\n up to date with business related\n books.",
                          style: TextStyle(
                              fontFamily: "lato",
                              fontSize: 14,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "location-arrow     Newcastle - Australia",
                          style:
                              TextStyle(color: Colors.grey, fontFamily: "lato"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "21",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Books",
                                  style: TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("assets/images/profile.png"),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff5ABD8C),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: "lato"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Your Purchases (21)",
                  style: TextStyle(
                      fontFamily: "lato", fontSize: 25, color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    list.length,
                    (index) => SizedBox(
                      height: 250,
                      child: Image.asset(
                        list[index],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Your Reviews (7)",
                  style: TextStyle(
                      fontFamily: "lato", fontSize: 25, color: Colors.black54),
                ),
              ),
              Column(
                children: List.generate(
                  list2.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(13, 12),
                              blurRadius: 30)
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list2[index]["name"],
                                  style: const TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.black45),
                                ),
                                const Text(
                                  "Read more >",
                                  style: TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.black45),
                                ),
                                Row(
                                  children: List.generate(
                                    5,
                                    (index) => const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color(0xff5ABD8C),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(list2[index]["image"])
                        ],
                      ),
                    ),
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
