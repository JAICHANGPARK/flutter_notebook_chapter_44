import 'package:flutter/material.dart';
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
                        children: [
                          Row(
                            children: [
                              CircleAvatar(),
                              Spacer(),
                              CircleAvatar(),
                              CircleAvatar(),
                            ],
                          ),
                          Text("Hello Dream"),
                          Text("What's on your mind?"),
                          Text("What type of help you need!"),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                  ),
                                  child: TextField(),
                                ),
                              ),
                              CircleAvatar(),
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
