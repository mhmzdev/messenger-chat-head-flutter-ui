import 'package:flutter/material.dart';
import 'package:messenger_chat_head/ui/chat_head_body/chatHeadBottom.dart';
import 'package:messenger_chat_head/ui/chat_head_body/chatListView.dart';
import 'package:messenger_chat_head/ui/chat_head_body/chatHeadAppBar.dart';

class ChatHeadBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
          0, MediaQuery.of(context).size.height * 0.02, 0, 0),
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomChatHeadAppBar(
              leading: ChatHeadUserProfile(),
              actions: ChatHeadAppBarActions(),
            ),
            Expanded(child: ChatListView()),
            Row(
              children: [
                BottomActionButton(),
                Expanded(child: BottomTextField()),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChatHeadUserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}

class ChatHeadAppBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(
              Icons.phone,
              color: Color(0xffaa36f8),
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.video_call,
              color: Color(0xffaa36f8),
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.info,
              color: Color(0xffaa36f8),
            ),
            onPressed: () {}),
      ],
    );
  }
}
