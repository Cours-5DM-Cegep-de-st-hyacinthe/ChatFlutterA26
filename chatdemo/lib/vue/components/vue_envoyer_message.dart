import 'package:flutter/material.dart';

class VueEnvoyerMessage extends StatelessWidget {
  
  final Function envoyerMessage;

  const VueEnvoyerMessage({super.key, required this.envoyerMessage});
  
  @override
  Widget build(BuildContext context) {
    final textControlleur = TextEditingController();

    return Row(children: [
      Expanded(child: TextField(controller: textControlleur)),
      IconButton(onPressed: () => envoyerMessage('Anonyme', textControlleur.text), 
        icon: const Icon(Icons.send))
    ],);
  }

}