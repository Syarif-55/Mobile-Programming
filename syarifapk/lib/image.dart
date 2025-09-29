import 'package:flutter/material.dart';


void main(){
  runApp(HaloDuniaku());
}

class HaloDuniaku extends StatelessWidget{
  const HaloDuniaku({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Aplikasi Pertamaku"),
        ),
        body: Center(
          child: Image(image: AssetImage("assets/naga.jpg")),
        ),
       
      ),
    );
  }
}