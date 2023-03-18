import 'package:flutter/material.dart';

import 'drawerScreen.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Help'),
      ),
      drawer: DrawerScreen(),
      body: const Center(
        child: Text("Help"),
      ),
    );
  }
}
