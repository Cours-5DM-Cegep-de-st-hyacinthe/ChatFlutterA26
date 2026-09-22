import 'package:chatdemo/model/Message.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MessageControleur extends Cubit<List<Message>> {
  MessageControleur() : super([
    Message(alias: 'personne 1', message: 'allo'),
    Message(alias: 'personne 2', message: 'salut')
  ]);

  void addMessage(String alias, String message) {
    final updatedMessageList = [...state];

    updatedMessageList.add(Message(alias: alias, message: message));

    emit(updatedMessageList);
  }

  // Marche absolument pas, state est immutable
  void addMessage2(String alias, String message) {
    state.add(Message(alias: alias, message: message));
    
    emit(state);
  }
}