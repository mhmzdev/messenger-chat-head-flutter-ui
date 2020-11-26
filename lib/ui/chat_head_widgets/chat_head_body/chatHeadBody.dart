import 'package:flutter/material.dart';
import 'package:messenger_chat_head/ui/chat_head_widgets/chatHeadAppBar.dart';

class ChatHeadBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
          0, MediaQuery.of(context).size.height * 0.02, 0, 0),
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
          )
        ],
      ),
      child: Column(
        children: [ChatHeadAppBar()],
      ),
    );
  }
}
