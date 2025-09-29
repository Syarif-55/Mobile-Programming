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
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            // Properti ini membuat grid memiliki 3 kolom yang lebarnya tetap.
            maxCrossAxisExtent: 150
          ),
          // children diisi dengan widget yang akan ditampilkan di dalam grid.
          children: <Widget>[
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),

            // Baris 2
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.cyan),

            // Baris 3
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            Container(width: 90, height: 90, color: Colors.yellow),

            // Baris 4
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 90, height: 90, color: Colors.green),
            Container(width: 90, height: 90, color: Colors.cyan),
            // --- Pola 4 Baris Selesai ---

          ],
        ),
      ),
    );
  }
}