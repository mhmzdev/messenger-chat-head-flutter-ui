import 'package:flutter/material.dart';

class ChatHeadBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomActionButton(),
          Expanded(child: BottomTextField()),
        ],
      ),
    );
  }
}

class BottomActionButton extends StatelessWidget {
  final List<Widget> _actionBtns = [
    IconButton(
        icon: Icon(
          Icons.dashboard,
          color: Color(0xff246bea),
        ),
        onPressed: () {}),
    IconButton(
        icon: Icon(
          Icons.camera_alt,
          color: Color(0xff246bea),
        ),
        onPressed: () {}),
    IconButton(
        icon: Icon(
          Icons.image,
          color: Color(0xff246bea),
        ),
        onPressed: () {}),
    IconButton(
        icon: Icon(
          Icons.mic,
          color: Color(0xff246bea),
        ),
        onPressed: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _actionBtns,
    );
  }
}

class BottomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Material(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        filled: true,
                        suffixIcon: Icon(
                          Icons.emoji_emotions,
                          color: Color(0xff4a6afe),
                        ),
                        hintText: 'Aa',
                        border: InputBorder.none),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.thumb_up,
                    color: Color(0xff4a6afe),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
