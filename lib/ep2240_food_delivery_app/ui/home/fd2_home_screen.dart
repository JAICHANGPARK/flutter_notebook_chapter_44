import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class Fd2HomeScreen extends StatefulWidget {
  const Fd2HomeScreen({super.key});

  @override
  State<Fd2HomeScreen> createState() => _Fd2HomeScreenState();
}

class _Fd2HomeScreenState extends State<Fd2HomeScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(42, 109, 62, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 24),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(radius: 26),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Delivery location",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Text(
                              "Seoul, South Korea",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        foregroundColor: Color.fromRGBO(42, 109, 62, 1),
                        child: Badge(
                          backgroundColor: Color.fromRGBO(42, 109, 62, 1),
                          child: Icon(HugeIcons.strokeRoundedNotification01),
                        ),
                      ),
                    ],
                  ),
                  Gap(24),
                  Text(
                    "What you'd like",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "to eat for today?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Gap(16),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Colors.grey,
                        suffixIconColor: Colors.grey,
                        suffixIcon: Icon(Icons.tune),
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        hintText: "Search menu, restaurant or craving",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(16),
          Expanded(child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12,
                  children: [
                    Text("Categories"),
                    Container(
                      height: 42,
                      color: Colors.blue,
                    )
                  ],
                )

                
              ],
            ),
          )),
          Container(
            height: 82,
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  child: Container(
                    decoration: ShapeDecoration(
                      color:
                          pageIndex == 0
                              ? Color.fromRGBO(42, 109, 62, 1)
                              : Colors.transparent,
                      shape: StadiumBorder(),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedHome01,
                          color: pageIndex == 0 ? Colors.white : Colors.grey,
                        ),
                        if (pageIndex == 0)
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 240),
                    decoration: ShapeDecoration(
                      color:
                          pageIndex == 1
                              ? Color.fromRGBO(42, 109, 62, 1)
                              : Colors.transparent,
                      shape: StadiumBorder(),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedCoupon01,
                          color: pageIndex == 1 ? Colors.white : Colors.grey,
                        ),
                        if (pageIndex == 1)
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  child: Container(
                    decoration: ShapeDecoration(
                      color:
                          pageIndex == 2
                              ? Color.fromRGBO(42, 109, 62, 1)
                              : Colors.transparent,
                      shape: StadiumBorder(),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedShoppingBag01,
                          color:pageIndex == 2 ? Colors.white : Colors.grey,
                        ),
                        if (pageIndex == 2)
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  child: Container(
                    decoration: ShapeDecoration(
                      color:
                      pageIndex == 3
                          ? Color.fromRGBO(42, 109, 62, 1)
                          : Colors.transparent,
                      shape: StadiumBorder(),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedBubbleChat,
                          color:pageIndex ==3 ? Colors.white : Colors.grey,
                        ),
                        if (pageIndex == 3)
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      pageIndex = 4;
                    });
                  },
                  child: Container(
                    decoration: ShapeDecoration(
                      color:
                      pageIndex == 4
                          ? Color.fromRGBO(42, 109, 62, 1)
                          : Colors.transparent,
                      shape: StadiumBorder(),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedAddToList,
                          color:pageIndex == 4 ? Colors.white : Colors.grey,
                        ),
                        if (pageIndex == 4)
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
