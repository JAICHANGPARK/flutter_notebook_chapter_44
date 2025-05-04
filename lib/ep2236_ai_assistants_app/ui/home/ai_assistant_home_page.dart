import 'package:flutter/material.dart';

class AiAssistantHomePage extends StatefulWidget {
  const AiAssistantHomePage({super.key});

  @override
  State<AiAssistantHomePage> createState() => _AiAssistantHomePageState();
}

class _AiAssistantHomePageState extends State<AiAssistantHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(237, 230, 207, 1),
        body: Column(
          children: [
            Expanded(child: Container(


              decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(42),
              )
            ),))
          ],
        ),
    );
  }
}
