import 'package:chatdemo/model/Message.dart';
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

  @override
  void initState() {
    super.initState();

    messages = [Message(alias: 'personne 1', message: 'allo'),
                Message(alias: 'personne 2', message: 'salut')];
  }

  @override
  Widget build(BuildContext context) {
    return VueMessageList(messages: messages!);
  }
  
}