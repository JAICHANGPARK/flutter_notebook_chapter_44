import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class EventsAppHomePage extends StatefulWidget {
  const EventsAppHomePage({super.key});

  @override
  State<EventsAppHomePage> createState() => _EventsAppHomePageState();
}

class _EventsAppHomePageState extends State<EventsAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // spacing: 12,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                color: Color.fromRGBO(245, 244, 249, 1),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 42, 16, 16),
                      child: Row(
                        spacing: 12,
                        children: [
                          CircleAvatar(),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Your Location'),
                                Row(
                                  children: [
                                    Text("Metropolis, DC"),
                                    Icon(Icons.keyboard_arrow_down_outlined),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(HugeIcons.strokeRoundedNotification02),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          spacing: 16,
                          children: [
                            Container(
                              height: 420,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    left: 24,
                                    right: 24,
                                    bottom: 24,
                                    top: 24,
                                    child: Transform.rotate(
                                      angle: -.1,
                                      child: Container(
                                        margin: EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    left: 24,
                                    right: 24,
                                    bottom: 24,
                                    top: 24,
                                    child: Transform.rotate(
                                      angle: .1,
                                      child: Container(
                                        margin: EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[400]!,
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    left: 24,
                                    right: 24,
                                    bottom: 24,
                                    top: 24,
                                    child: Transform.rotate(
                                      angle: 0,
                                      child: Container(
                                        margin: EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.lightGreenAccent,
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2020/02/03/08/59/escalator-4815107_1280.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          spacing: 8,
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
                                              child: Text("Traditional"),
                                            ),
                                            Spacer(),
                                            Text(
                                              "Dreamwalker Ceremony",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                            Row(
                                              spacing: 4,
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                                Text(
                                                  "Seoul City",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                                Text(
                                                  "12 jan 2025",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.timelapse,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                                Text(
                                                  "12:00 AM",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              spacing: 16,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 4,
                                                    vertical: 2,
                                                  ),
                                                  decoration: ShapeDecoration(
                                                    shape: StadiumBorder(),
                                                    color: Colors.white
                                                        .withValues(alpha: .4),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(radius: 12),
                                                      CircleAvatar(radius: 12),
                                                      CircleAvatar(radius: 12),
                                                      CircleAvatar(radius: 12),
                                                    ],
                                                  ),
                                                ),
                                                CircleAvatar(radius: 14),
                                                CircleAvatar(radius: 14),
                                                Spacer(),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 4,
                                                  ),
                                                  decoration: ShapeDecoration(
                                                    shape: StadiumBorder(),
                                                    color: Colors.purple,
                                                  ),
                                                  child: Text(
                                                    "Join",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 16),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 12),
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
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),

                            Container(
                              height: 48,
                              margin: EdgeInsets.symmetric(horizontal: 16),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Find Events in Your Area",
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
                            Container(
                              height: 300,
                              padding: EdgeInsets.only(left: 16),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: 320,
                                    margin: EdgeInsets.only(right: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  spacing: 6,
                  children: [
                    Icon(HugeIcons.strokeRoundedHome01),
                    Text("Home", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  spacing: 6,
                  children: [
                    Icon(HugeIcons.strokeRoundedDiscoverCircle),
                    Text("History", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  spacing: 6,
                  children: [
                    Icon(HugeIcons.strokeRoundedCalendar01),
                    Text("Bookings", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  spacing: 6,
                  children: [
                    Icon(HugeIcons.strokeRoundedUser),
                    Text("Profile", style: TextStyle(fontSize: 12)),
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
