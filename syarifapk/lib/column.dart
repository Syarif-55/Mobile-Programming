import 'package:flutter/material.dart';

void main (){
  runApp(HaloDuniaku());
}

class HaloDuniaku extends StatelessWidget {
  const HaloDuniaku({super.key});
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Aplikasi pertamaku"),
      ),
      body: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            color: Colors.green,
            child: Text("1"),
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.blue,
            child: Text("2"),
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.red,
            child: Text("3"),
          )
        ],
      ),
    ),
  );
  }
}