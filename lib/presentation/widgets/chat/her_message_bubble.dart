import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {

  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of( context );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primaryColor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 20),
            child: Text(" ffcyfdt edtrdtrd tdh", style: TextStyle( color: Colors.white))),
        ),
        const SizedBox(height: 10)
      ],
    );

  }
}