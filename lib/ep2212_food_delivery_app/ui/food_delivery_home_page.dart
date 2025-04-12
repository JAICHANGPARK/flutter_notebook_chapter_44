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
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  right: 24,
                                  child: Text(
                                    "Specials of the week",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  right: 24,
                                  child: Text(
                                    "Cookies",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Positioned(
                                  bottom: -64,
                                  right: -64,
                                  top: 32,
                                  left: 32,
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2014/04/02/17/06/cookie-307960_1280.png",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  right: 24,
                                  child: Text(
                                    "Drinks",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Positioned(
                                  bottom: -24,
                                  right: 0,
                                  top: 42,
                                  left: 0,
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2014/09/12/18/20/can-443123_1280.png",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  right: 24,
                                  child: Text(
                                    "Desserts",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  right: 24,
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Positioned(
                                  bottom: -64,
                                  right: -64,
                                  top: 32,
                                  left: 32,
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2022/10/06/22/22/pizza-7503664_1280.png",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  right: 24,
                                  child: Text(
                                    "Salads",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Positioned(
                                  bottom: -64,
                                  right: -64,
                                  top: 32,
                                  left: 32,
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2014/04/02/17/06/cookie-307960_1280.png",
                                  ),
                                ),
                              ],
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
                                    spacing: 8,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2021/01/08/06/32/cafe-5899078_1280.jpg",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Sundown Cafe",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Spacer(),
                                          Text(
                                            '4.9',
                                            style: TextStyle(
                                              color: Colors.orange,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 16,
                                            color: Colors.orange,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "italian food 60 min",
                                        style: TextStyle(color: Colors.grey),
                                      ),
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
                            spacing: 8,
                            children: [
                              Text(
                                "Best prices",
                                style: TextStyle(fontSize: 24),
                              ),
                              Icon(Icons.verified, color: Colors.green),
                            ],
                          ),
                          Container(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 120,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 4,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                  top: 8,
                                                  right: 8,
                                                  child: CircleAvatar()),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Latte",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text("\$2.00"),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
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
