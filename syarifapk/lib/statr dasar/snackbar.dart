import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menggunakan GetMaterialApp agar fungsi Get.snackbar bekerja
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SnackBar Example")),
        body: SnackBarExample(),
      ),
    );
  }
}

class SnackBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Tombol untuk menampilkan SnackBar standar menggunakan ScaffoldMessenger
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Hello from SnackBar")),
              );
            },
            child: Text("Show Normal SnackBar"),
          ),

          // Tombol untuk menampilkan SnackBar menggunakan GetX
          ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "Hello",
                "This is GetX SnackBar",
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            child: Text("Show GetX SnackBar"),
          ),
        ],
      ),
    );
  }
}