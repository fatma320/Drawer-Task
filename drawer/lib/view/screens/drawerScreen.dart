import 'package:drawer/view/screens/rateScreen.dart';
import 'package:flutter/material.dart';
import '../../model/drawerModel.dart';
import '../widgets/drawerItems.dart';
import 'aboutScreen.dart';
import 'feedback.dart';
import 'helpScreen.dart';
import 'homeScreen.dart';
import 'inviteFriend.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({Key? key}) : super(key: key);
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const HelpScreen(),
     FeedbackScreen(),
    const InviteFriend(),
    const RateApp(),
    const About()
  ];
  List<String> titles = [
    "Home",
    "Help",
    "Feedback",
    "Invite Friend",
    "Rate App",
    "About Us",
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 10),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/chris.jpeg'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Chris Hemsworth",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 2,
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => DrawerItem(
                        index: index,
                        model: items[index],
                      ),
                  itemCount: items.length),
            ),
            const Divider(thickness: 2),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                title: Text(
                  "Sign Out",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                trailing: Icon(
                  Icons.power_settings_new,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),

    );
  }

}