import 'package:flutter/material.dart';

class EventsAppBookingsPage extends StatefulWidget {
  const EventsAppBookingsPage({super.key});

  @override
  State<EventsAppBookingsPage> createState() => _EventsAppBookingsPageState();
}

class _EventsAppBookingsPageState extends State<EventsAppBookingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      // margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey[200]!),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        spacing: 6,
                        children: [
                          Icon(Icons.search_outlined),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Find Event...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.tune),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Container(
                      height: 100,
                      padding: EdgeInsets.only(left: 16),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: SizedBox(
                              width: 62,
                              child: Column(
                                spacing: 8,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.deepPurple,
                                    ),
                                    padding: EdgeInsets.all(1.5),
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundImage: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2025/03/17/14/43/bird-9476034_1280.png",
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Dream Walker",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Discover Events You'll Love",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      height: 180,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 16),
                            width: 260,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2024/12/28/13/28/tram-9296118_1280.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  bottom: 12,

                                  child: Text(
                                    "Snow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
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
                            "Catch the Trending Events",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Explore More"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(5, (index) {
                          return Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              spacing: 12,
                              children: [
                                Row(
                                  spacing: 12,
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2022/08/12/12/07/subway-7381618_1280.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Colors.white,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 6,
                                              vertical: 2,
                                            ),
                                            child: Text(
                                              "Traditional",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        spacing: 8,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Lorem Ipsum(Lipsum)",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                            maxLines: 2,
                                          ),
                                          SizedBox(
                                            height: 32,
                                            child: Placeholder(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.grey[100]!,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,

                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 18,
                                      ),
                                      Text('Dream City'),
                                      Text("●"),
                                      Icon(Icons.calendar_month, size: 18),
                                      Text("12 jan 2025"),
                                      Text("●"),
                                      Icon(Icons.access_time, size: 18),
                                      Text("12:00 AM"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
