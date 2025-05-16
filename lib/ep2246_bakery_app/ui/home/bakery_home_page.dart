import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BakeryHomePage extends StatefulWidget {
  const BakeryHomePage({super.key});

  @override
  State<BakeryHomePage> createState() => _BakeryHomePageState();
}

class _BakeryHomePageState extends State<BakeryHomePage> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              spacing: 12,
              children: [
                Container(
                  height: 240,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(130, 73, 19, 1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("Location"),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text("Nagoya, Japan"),
                                    Icon(Icons.keyboard_arrow_down_outlined),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(
                                "Special Offers",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("See all"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 180,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                left: 16,
                                top: 16,
                                bottom: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Up to 30% offer!",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      "Enjoy our big offer of\nevery day",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(130, 73, 19, 1),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 8,
                                      ),
                                      child: Text(
                                        "Shop Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SmoothPageIndicator(
                            controller: pageController,
                            count: 4,

                            effect: WormEffect(dotWidth: 12, dotHeight: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("See all"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          padding: EdgeInsets.only(left: 16),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Column(
                                  spacing: 12,
                                  children: [
                                    CircleAvatar(radius: 32),
                                    Text("Cookies"),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Special Breads",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("See all"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          padding: EdgeInsets.only(left: 16),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 16),
                                width: 210,
                                decoration: BoxDecoration(color: Colors.blue),
                              );
                            },
                          ),
                        ),
                        Container(height: 200),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 82,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(HugeIcons.strokeRoundedHome01),
                      Text("Home"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(HugeIcons.strokeRoundedChart),
                      Text("Activity"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(HugeIcons.strokeRoundedSettings01),
                      Text("Setting"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(HugeIcons.strokeRoundedNotification01),
                      Text("Notification"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(HugeIcons.strokeRoundedUser),
                      Text("Profile"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
