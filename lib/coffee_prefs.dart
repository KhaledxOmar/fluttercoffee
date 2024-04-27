import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget{
    const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;

    void increasesugars(){
      setState((){
        sugar = sugar < 5? sugar += 1 : 0;
      });
    }

    void increasestrength(){
      setState(() {
        strength = strength < 5? strength += 1 : 1;

      });
    }

      @override
      Widget build(context) {

        return Column(
          children: [
            Row(children: [
              const Text("strength: "),

              

              for(int i = 0; i<strength; i++)
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
                onPressed: increasestrength, 
                child: const Text("+"),
                ),

              

            ]
            ),

            Row(children: [
              const Text("sugar: "),

              if(sugar == 0)
                const Text("No sugar"),
              
              for(int i = 0; i < sugar; i++)
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