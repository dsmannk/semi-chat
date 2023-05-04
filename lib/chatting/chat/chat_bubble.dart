import 'package:flutter/material.dart';


class ChatBubble extends StatelessWidget {
  const ChatBubble(this.message, this.isME, {Key? key}) : super(key: key);

  final String message;
  final bool isME;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isME ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isME ? Colors.grey[300] : Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomRight: isME ? Radius.circular(0) : Radius.circular(12),
              bottomLeft: isME ? Radius.circular(0) : Radius.circular(12),
            ),
          ),
          width: 145,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(
            message,
            style: TextStyle(
              color: isME ? Colors.black : Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
