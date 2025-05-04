import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2236_ai_assistants_app/ui/home/ai_assistant_home_page.dart';
import 'package:gap/gap.dart';

class AiAssistantStartPage extends StatefulWidget {
  const AiAssistantStartPage({super.key});

  @override
  State<AiAssistantStartPage> createState() => _AiAssistantStartPageState();
}

class _AiAssistantStartPageState extends State<AiAssistantStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  // end: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(229, 234, 228, 1),
                    Color.fromRGBO(229, 234, 228, 1),
                    Color.fromRGBO(245, 242, 236, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            // top: MediaQuery.sizeOf(context).height / 2,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromRGBO(233, 227, 192, 1),
                    Color.fromRGBO(238, 234, 211, 1),
                    Colors.white.withValues(alpha: .1),
                    Colors.white.withValues(alpha: .1),
                    // Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 62,
            left: 24,
            right: 24,
            bottom: 32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(228, 223, 207, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text("Skip"),
                  ),
                ),
                Spacer(),
                Text(
                  "Empower yourself with An AI Assistant!",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Gap(16),
                Text(
                  "Unleash you potential & boost productivity with an AI powered Assistant.",
                  textAlign: TextAlign.center,
                ),
                Gap(32),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AiAssistantHomePage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(190, 200, 249, 1),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Center(
                      child: Text(
                        "Get Start as Guest",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Gap(12),
                Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
