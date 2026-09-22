import 'package:chatdemo/controleur/message_controleur.dart';
import 'package:chatdemo/vue/page_principale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Rouler en commande:
//    flutter pub add flutter_bloc
// Après avoir pull d'un repo git:
//    flutter pub get

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(create: (_) => MessageControleur(),
        child: Scaffold(
          appBar: AppBar(title: Text('Mon app')),
          body: PagePrincipale()
        ),
      )
    );
  }
}

