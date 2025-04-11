import 'package:flutter/material.dart';
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
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text("Regent Street, 16"),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            Expanded(child: SingleChildScrollView(child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  height: 200,
                  child: Placeholder(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    spacing: 12,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Places"),
                          // Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      Container(
                        height: 200,
                        child: Placeholder(),
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
                      Container(
                        height: 200,
                        child: Placeholder(),
                      ),
                    ],
                  ),
                ),

              ],
            ),))

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
