import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Gap(12),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Regent Street, 16", style: TextStyle(fontSize: 32)),
                  Icon(Icons.keyboard_arrow_down, size: 26),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),

                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3,
                        shrinkWrap: true,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Places", style: TextStyle(fontSize: 24)),
                              // Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                          Container(
                            height: 210,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 12),
                                  width: 220,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 12,
                                    children: [
                                      Expanded(child: Placeholder()),
                                      Row(
                                        children: [
                                          Text("Sundown Cafe"),
                                          Spacer(),
                                          Text('4.9'),
                                          Icon(Icons.star,
                                          size: 16,),
                                        ],
                                      ),
                                      Text("italian food 60 min"),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Best prices"),
                              Icon(Icons.verified),
                            ],
                          ),
                          Container(height: 200, child: Placeholder()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 82,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,

          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedHome02),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedSearch01),
              label: "Catalog",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedShoppingCart01),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedUser),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
