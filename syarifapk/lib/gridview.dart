import 'package:flutter/material.dart';

void main() {
  runApp(const syarif());
}

class syarif extends StatelessWidget {
  const syarif({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Aplikasi pertamaku"),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Properti ini membuat grid memiliki 3 kolom yang lebarnya tetap.
            crossAxisCount: 3,
          ),
          // children diisi dengan widget yang akan ditampilkan di dalam grid.
          children: <Widget>[
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.red),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.red),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.red),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.red),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.red),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.red),
          ],
        ),
      ),
    );
  }
}