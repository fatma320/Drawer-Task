import 'package:flutter/material.dart';

import 'drawerScreen.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('InviteFriend'),
      ),
      drawer:  DrawerScreen(),
      body: const Center(
        child: Text("Invite Friend"),
      ),
    );
  }
}
