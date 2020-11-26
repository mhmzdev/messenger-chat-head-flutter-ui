import 'package:flutter/material.dart';

class ChatHeadBtn extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  ChatHeadBtn({this.iconData, this.iconSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(360.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8.0,
            )
          ]),
      child: Icon(
        iconData,
        size: iconSize,
        color: Colors.grey[400],
      ),
    );
  }
}
