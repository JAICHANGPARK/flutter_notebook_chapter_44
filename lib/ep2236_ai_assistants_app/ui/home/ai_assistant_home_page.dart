import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class AiAssistantHomePage extends StatefulWidget {
  const AiAssistantHomePage({super.key});

  @override
  State<AiAssistantHomePage> createState() => _AiAssistantHomePageState();
}

class _AiAssistantHomePageState extends State<AiAssistantHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 230, 207, 1),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(42),
                  bottomRight: Radius.circular(42),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 320,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(42),
                        bottomRight: Radius.circular(42),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        colors: [
                          Color.fromRGBO(255, 245, 235, 1),
                          Color.fromRGBO(255, 245, 235, 1),
                          Color.fromRGBO(253, 244, 228, 1),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(20),
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              CircleAvatar(radius: 28),
                              Spacer(),
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.black.withValues(
                                  alpha: .1,
                                ),
                                foregroundColor: Colors.black,
                                child: Icon(
                                  HugeIcons.strokeRoundedMessageQuestion,
                                ),
                              ),
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.black.withValues(
                                  alpha: .1,
                                ),
                                foregroundColor: Colors.black,
                                child: Icon(HugeIcons.strokeRoundedListSetting),
                              ),
                            ],
                          ),
                          Gap(24),
                          Text(
                            "Hello Dream",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Gap(4),
                          Text(
                            "What's on your mind?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "What type of help you need!",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Gap(16),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.search),
                                      hintText: "Search waht you want..",
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CircleAvatar(radius: 28),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [Icon(HugeIcons.strokeRoundedHome02), Text("Home")],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    Icon(HugeIcons.strokeRoundedCalendar01),
                    Text("Today"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    Icon(HugeIcons.strokeRoundedBubbleChat),
                    Text("Explore"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    Icon(HugeIcons.strokeRoundedUser),
                    Text("Profile"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
