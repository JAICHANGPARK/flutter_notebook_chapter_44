import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../categories/bakery_categories_page.dart';
import '../widgets/bakery_bottom_bar_widget.dart';

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
                  // height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(130, 73, 19, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        spacing: 20,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  spacing: 5,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Location",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      spacing: 4,
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Nagoya, Japan",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Badge(
                                  child: Icon(Icons.notifications_none),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 12,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      icon: Icon(Icons.search),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Icon(Icons.tune),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder:
                                          (context) => BakeryCategoriesPage(),
                                    ),
                                  );
                                },
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
            child: BakeryBottomBarWidget(),
          ),
        ],
      ),
    );
  }
}
