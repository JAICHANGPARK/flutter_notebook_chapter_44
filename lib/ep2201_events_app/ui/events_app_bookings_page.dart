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
            Expanded(child: SingleChildScrollView(child: Column(
              children: [],
            ),),),
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
                            child: CircleAvatar(radius: 28),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: 180,
              child: Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Catch the Trending Events",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(onPressed: () {}, child: Text("Explore More")),
                ],
              ),
            ),
            Column(
              children: List.generate(5, (index) {
                return Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            child: Placeholder(),
                          ),
                          Expanded(child: Column(children: [])),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
