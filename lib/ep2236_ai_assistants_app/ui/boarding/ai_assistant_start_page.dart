import 'package:flutter/material.dart';

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
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(229, 234, 228, 1)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
