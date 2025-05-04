import 'package:flutter/material.dart';
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
            left: 24,
            right: 24,
            bottom: 24,
            child: Column(
              children: [
                Text("Empower yourself with An AI Assistant!"),
                Gap(16),
                Text(
                  "Unleash you potential & boost productivity with an AI powered Assistant.",
                ),
                Gap(32),
                Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Color.fromRGBO(190, 200, 249, 1),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14,),
                  child: Center(child: Text("Start as Guest")),
                ),
                Gap(12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
