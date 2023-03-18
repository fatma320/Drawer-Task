import 'package:flutter/material.dart';

import 'drawerScreen.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('About'),
      ),
      drawer:  DrawerScreen(),
      body: const Center(
        child: Text("About"),
      ),
    );
  }
}
