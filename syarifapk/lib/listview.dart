import 'package:flutter/material.dart';

void main() {
  runApp(Syarif());
}

class Syarif extends StatelessWidget {
  const Syarif({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
              "Aplikasi pertamaku", style: TextStyle(color: Colors.white))
        ),
          body: ListView(

            children: [

              Container(width: 90, height: 90, color: Colors.blue),
              // Container 1
              Container(width: 90, height: 90, color: Colors.red),
              // Container 2
              Container(width: 90, height: 90, color: Colors.green),
              // Container 3
              Container(width: 90, height: 90, color: Colors.blue),
              // Container 1
              Container(width: 90, height: 90, color: Colors.red),
              // Container 2
              Container(width: 90, height: 90, color: Colors.green),
              // Container 3
              Container(width: 90, height: 90, color: Colors.blue),
              // Container 1
              Container(width: 90, height: 90, color: Colors.red),
              // Container 2
              Container(width: 90, height: 90, color: Colors.green),
              // Container 3
              Container(width: 90, height: 90, color: Colors.blue),
              // Container 10
            ],

        ),
      ),
    );
  }
}

