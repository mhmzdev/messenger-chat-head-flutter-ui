import 'dart:math';

import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  final Random _rnd = Random();

  _randomUserChat() {
    final isUserRandomBool = _rnd.nextBool();
    return isUserRandomBool;
  }

  final _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  getRandomString() {
    var randomInt = _rnd.nextInt(20);
    return String.fromCharCodes(
      Iterable.generate(
        randomInt,
        (_) => _chars.codeUnitAt(
          _rnd.nextInt(_chars.length),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
      children: List.generate(
          30,
          (index) => MessageBubble(
              isUser: _randomUserChat(), text: getRandomString())),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isUser;
  MessageBubble({this.text, this.isUser});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[isUser ? isUserWidget() : isNotUserWidget()],
      ),
    );
  }

  Widget isUserWidget() {
    return Material(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15)),
      color: Color(0xff246bea),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  Widget isNotUserWidget() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/hamza.jpeg'),
          maxRadius: 15,
        ),
        SizedBox(
          width: 10,
        ),
        Material(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.grey[200],
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
