import 'package:chatdemo/model/Message.dart';
import 'package:flutter/material.dart';

class VueMessageList extends StatelessWidget {

  const VueMessageList ({required this.messages});
  final List<Message> messages;
  
  @override
  Widget build(BuildContext context) {
    return 
    Expanded(
      child: Column(
        children: [
          for(var message in messages)
            Row(children: [
              Text(message.toString())
            ],)
        ],
      )
    );
  }
}