import 'package:chatdemo/controleur/message_controleur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VueEnvoyerMessage extends StatelessWidget {
  const VueEnvoyerMessage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final textControlleur = TextEditingController();

    return Row(children: [
      Expanded(child: TextField(controller: textControlleur)),
      IconButton(onPressed: () => context.read<MessageControleur>().addMessage("Anonyme", textControlleur.text), 
        icon: const Icon(Icons.send))
    ],);
  }

}