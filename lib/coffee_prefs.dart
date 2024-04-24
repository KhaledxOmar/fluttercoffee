import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget{
    const CoffeePrefs({super.key});

      @override
      Widget build(context) {
        return const Column(
          children: [
            Row(children: [
              Text("strength: "),
              Text("4"),
              SizedBox(width: 50),
            ]
            ),

            Row(children: [
              Text("strength: "),
              Text("34"),
              SizedBox(width: 50),
            ]
            ),
          ]
        );

      }

}