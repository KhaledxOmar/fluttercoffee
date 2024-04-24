import 'package:first_app/coffee_prefs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
    const Home({super.key});

      @override
      Widget build(context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Coffee'),
            backgroundColor: Colors.brown,
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
                child: const Text('How I like my coffee'),
              ),
              Container(
                color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
                child: const CoffeePrefs(),
              ),
            ],

          ),
        );

      }

}