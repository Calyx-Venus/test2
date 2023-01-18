import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 70.0,
          child: Text('Test'),
        ),
        backgroundColor: Color.fromARGB(160, 255, 255, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Get.to(SettingsPg());
            },
          ),
        ],
        actionsIconTheme:
            IconThemeData(color: Color.fromARGB(255, 64, 60, 56), size: 36),
      ),
    );
  }
}
