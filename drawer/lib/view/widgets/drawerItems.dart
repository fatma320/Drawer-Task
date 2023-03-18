import 'package:drawer/view/screens/homeScreen.dart';
import 'package:drawer/view/screens/rateScreen.dart';
import 'package:flutter/material.dart';
import '../../model/drawerModel.dart';
import '../screens/aboutScreen.dart';
import '../screens/feedback.dart';
import '../screens/helpScreen.dart';
import '../screens/inviteFriend.dart';

class DrawerItem extends StatelessWidget {
  final int index;
  final DrawerModel model;

  DrawerItem({super.key, required this.index, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
          leading: IconButton(
              icon: Icon(
                model.icon,
                weight: 20,
                color: Colors.black,
                size: 28,
              ),
              onPressed: () {}),
          title: Text(
            model.title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
          onTap: () {
            if (index == 0) {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return const HomeScreen();
              }));
            } else if (index == 1) {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return const HelpScreen();
              }));
            } else if (index == 2) {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return FeedbackScreen();
              }));
            } else if (index == 3) {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return const InviteFriend();
              }));
            } else if (index == 4) {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return const RateApp();
              }));
            } else if (index == 5) {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return const About();
              }));
            }
          }),
    );
  }
}
