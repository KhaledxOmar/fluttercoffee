import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget{
    const CoffeePrefs({super.key});

    void increasesugars(){
      print("sugar added");
    }

      @override
      Widget build(context) {
        return Column(
          children: [
            Row(children: [
              const Text("strength: "),
              const Text("5"),
              Image.asset('assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[200],
                colorBlendMode: BlendMode.multiply,
                ),
              const Expanded(child: SizedBox(width: 50)),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                onPressed: increasesugars, 
                child: const Text("+"),
                ),

              

            ]
            ),

            Row(children: [
              const Text("strength: "),
              const Text("34"),
              Image.asset('assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[200],
                colorBlendMode: BlendMode.multiply,
                ),
              const Expanded(child: SizedBox(width: 50)),
              
              FilledButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                onPressed: increasesugars, 
                child: const Text("+"),
                ),
            ]
            ),
          ]
        );

      }

}