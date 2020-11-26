import 'package:flutter/material.dart';
import 'package:messenger_chat_head/ui/chat_head_widgets/chat_head_body/chatHeadAppBar.dart';
import 'package:messenger_chat_head/ui/chat_head_widgets/chat_head_body/chatHeadBottom.dart';

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
            ChatHeadAppBar(),
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
