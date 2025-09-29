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
          child: Image(
            image: NetworkImage("https://i.ytimg.com/vi/6PAAMgaBCFQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBy38ijVftoy0v_37zbq02xEosXdg")),
          ),

      ),
    );
  }
}