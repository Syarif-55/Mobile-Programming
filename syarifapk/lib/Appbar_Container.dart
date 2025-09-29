import 'package:flutter/material.dart';

void main() {
  runApp(HaloDuniaku());
}

class HaloDuniaku extends StatelessWidget {
  const HaloDuniaku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar (
        backgroundColor: Colors.blue,
          title: Text("Aplikasi pertamaku"),
        ),
        body: Center(
            child: Container(
              width: 100,
                height: 100,
                color: Colors.cyanAccent,
               child:Center(child:  Text("Halo Duniaku")),
            ),
        ),

      ), // Scaffold
    ); // MaterialApp
  }
}