import 'package:flutter/material.dart';

class ChatHeadBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomActionButton(),
            BottomTextField(),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class BottomActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BottomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
