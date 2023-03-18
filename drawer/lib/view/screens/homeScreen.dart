import 'package:flutter/material.dart';

import 'drawerScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Home'),
      ),
      drawer:  DrawerScreen(),
      body: const Center(
        child: Text("Home"),
      ),
    );
  }
}
