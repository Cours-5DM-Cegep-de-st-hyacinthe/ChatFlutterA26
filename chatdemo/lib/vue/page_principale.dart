import 'package:chatdemo/vue/components/vue_envoyer_message.dart';
import 'package:chatdemo/vue/components/vue_message_list.dart';
import 'package:flutter/material.dart';

class PagePrincipale extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VueMessageList(),
        VueEnvoyerMessage()
    ],);
  }
}