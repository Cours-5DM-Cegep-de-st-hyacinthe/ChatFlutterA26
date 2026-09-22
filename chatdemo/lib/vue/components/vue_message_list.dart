import 'package:chatdemo/controleur/message_controleur.dart';
import 'package:chatdemo/model/Message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VueMessageList extends StatelessWidget {

  const VueMessageList ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return 
    BlocBuilder<MessageControleur, List<Message>>(
    builder: (context, messages) => 
      Expanded(
        child: Column(
          children: [
            for(var message in messages)
              Row(children: [
                Text(message.toString())
              ],)
          ],
        )
      )
    );
  }
}