import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://imgs.search.brave.com/Jb9ZTj2tI81s0CDoK3ZaC-k0PhFQxtigSWAXhUUD8nQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/Y29udGFjdG11c2lj/LmNvbS9waWNzL21u/LzIwMTYxMjExLzIy/bmRfYW5udWFsX2Ny/aXRpY3NfY2hvaWNl/X2F3YXJkc18xMjEy/MTZfMDQvMjJuZC1h/bm51YWwtY3JpdGlj/cy1jaG9pY2UtYXdh/cmRzXzU1MDYyMjUu/anBn"),
          ),
        ),
        title: const Text("My Love"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: ( context, index ){
                  return ( index % 2 == 0 ) 
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
                },
              )
            ),
            Text("Mundo")
          ],
        ),
      ),
    );
  }
}