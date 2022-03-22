import 'package:flutter/material.dart';

class FloatingButtons extends StatelessWidget {
  FloatingButtons(
      {Key? key,
      required this.icon,
      required this.tip,
      required this.screenName})
      : super(key: key);

  IconData icon;
  String tip;
  String screenName;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.orange,
      tooltip: tip,
      onPressed: () {
        Navigator.pushNamed(context, screenName);
      },
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
