import 'package:flutter/material.dart';

class ChatHeadAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [chatHeadUserProfile(), chatHeadAppBarActions()],
        ),
      ),
    );
  }

  Widget chatHeadUserProfile() {
    return FlatButton(
        padding: EdgeInsets.all(5.0),
        splashColor: Colors.transparent,
        onPressed: () {},
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/hamza.jpeg'),
              maxRadius: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Hamza")
          ],
        ));
  }

  Widget chatHeadAppBarActions() {
    return Row(
      children: [
        IconButton(icon: Icon(Icons.phone), onPressed: () {}),
        IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
        IconButton(icon: Icon(Icons.info), onPressed: () {}),
      ],
    );
  }
}
