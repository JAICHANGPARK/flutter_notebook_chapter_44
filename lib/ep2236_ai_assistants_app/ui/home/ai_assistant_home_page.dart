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
                    padding: EdgeInsets.symmetric(vertical: 28, horizontal: 20),
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.black.withValues(
                                  alpha: .1,
                                ),
                              ),
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
                              fontSize: 26,
                            ),
                          ),
                          Gap(4),
                          Text(
                            "What's on your mind?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                          Gap(4),
                          Text(
                            "What type of help you need!",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Gap(16),
                          Row(
                            spacing: 12,
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
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color.fromRGBO(27, 36, 49, 1),
                                foregroundColor: Colors.white,
                                child: Icon(HugeIcons.strokeRoundedAudioWave01),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Upcoming Task"),
                        TextButton(onPressed: () {}, child: Text("See all")),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Row( spacing: 16,
                            children: [Expanded(child: Placeholder(),
                            ),
                              Expanded(child: Placeholder(),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row( spacing: 16,
                            children: [Expanded(child: Placeholder()),
                              Expanded(child: Placeholder())
                            ],
                          ),
                        ),
                      ],
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
