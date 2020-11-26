import 'package:flutter/material.dart';

class CustomChatHeadAppBar extends StatelessWidget {
  final Widget leading;
  final Widget actions;
  CustomChatHeadAppBar({@required this.leading, @required this.actions});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [leading, actions],
        ),
      ),
    );
  }
}
