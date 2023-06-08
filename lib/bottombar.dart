import 'package:flutter/material.dart';

import 'homescreen.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int selectedIndex = 0;
  List<Map<String, dynamic>> list = [
    {"icon": Icons.home, "name": "Home"},
    {"icon": Icons.search, "name": "Search"},
    {"icon": Icons.list, "name": "Wishlist"},
    {"icon": Icons.shopping_cart_outlined, "name": "Shopping cart"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          HomeScreen(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        color: Color(0xff5ABD8C),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              list.length,
              (index) => GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                },
                child: index == selectedIndex
                    ? Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                list[index]["icon"],
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Text(
                            list[index]["name"],
                            style: const TextStyle(
                                color: Colors.white, fontFamily: "lato"),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                list[index]["icon"],
                                color: Colors.white70,
                              ),
                            ],
                          ),
                          Text(
                            list[index]["name"],
                            style: TextStyle(
                                color: Colors.white70, fontFamily: "lato"),
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
