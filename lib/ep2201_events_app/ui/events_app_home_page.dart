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
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
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
                              height: 400,
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
                                                Text("Seoul City"),
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: Colors.white,
                                                ),
                                                Text("12 jan 2025"),
                                                Icon(
                                                  Icons.timelapse,
                                                  color: Colors.white,
                                                ),
                                                Text("12:00 AM"),
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
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [Container(), Text("")],
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
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Find Events in Your Area"),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("Explore More"),
                                  ),
                                ],
                              ),
                            ),
                            Container(height: 300, child: Placeholder()),
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
