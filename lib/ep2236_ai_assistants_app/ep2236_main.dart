import 'package:flutter/material.dart';

import 'ui/boarding/ai_assistant_start_page.dart';

void main() {
  runApp(AIAssistantsApp());
}


class AIAssistantsApp extends StatelessWidget {
  const AIAssistantsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AiAssistantStartPage(),
    );
  }
}
