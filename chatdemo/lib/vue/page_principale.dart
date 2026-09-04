import 'package:chatdemo/model/Message.dart';
import 'package:chatdemo/vue/components/vue_envoyer_message.dart';
import 'package:chatdemo/vue/components/vue_message_list.dart';
import 'package:flutter/material.dart';

class PagePrincipale extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PagePrincipaleState();
  }
}

class _PagePrincipaleState extends State<PagePrincipale> {
  List<Message>? messages;

  void _sauvegarderMessage (String alias, String message) {
    setState(() {
      messages?.add(Message(alias: alias, message: message));
    });
  }

  @override
  void initState() {
    super.initState();

    messages = [Message(alias: 'personne 1', message: 'allo'),
                Message(alias: 'personne 2', message: 'salut')];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VueMessageList(messages: messages!),
        VueEnvoyerMessage(envoyerMessage: _sauvegarderMessage)
    ],);
  }
  
}