import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {

  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of( context ).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 20),
            child: Text("Holaaaaa", style: TextStyle( color: Colors.white))),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),


      ],
    );

  }
}

class _ImageBubble extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of( context ).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),

      child: Image.network(
        "https://yesno.wtf/assets/yes/0-c44a7789d54cbdcad867fb7845ff03ae.gif",
         width:  size.width * 0.70,
         height: 170,
         fit: BoxFit.cover,
         loadingBuilder: ( context, child, loadingProgress ){
            if ( loadingProgress == null) return child;

            return Container(
              width: size.width * 0.7,
              height: 170,
              padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5 ),
              child: const Text( "Loading", style: TextStyle( color: Colors.greenAccent, fontSize: 30 ) )
            );
         },
        ));
  }
}