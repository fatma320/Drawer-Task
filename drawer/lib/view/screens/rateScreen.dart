import 'package:flutter/material.dart';

import 'drawerScreen.dart';

class RateApp extends StatelessWidget {
  const RateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('RateApp'),
      ),
      drawer:  DrawerScreen(),
      body: const Center(
        child: Text("Rate App"),
      ),
    );
  }
}
