import 'package:flutter/material.dart';
import '../../model/drawerModel.dart';
import '../screens/feedback.dart';

class DrawerItem extends StatelessWidget {
  final int index;
  final DrawerModel model;

  DrawerItem({super.key, required this.index, required this.model});

  var color = Colors.transparent;
  bool isSelected = true;

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
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return FeedbackScreen();
            }));
          }),
    );
  }
}


