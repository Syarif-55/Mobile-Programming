import 'package:flutter/material.dart';
import 'package:get/get.dart';

// --- Bagian 1: GetX Controller ---
class CounterController extends GetxController {
  // .obs membuat variabel ini 'observable' (dapat dipantau perubahannya)
  var counter = 0.obs;

  void increment() {
    counter++;
  }
}

// --- Bagian 2: Main Application ---
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menggunakan GetMaterialApp untuk mengaktifkan GetX
    return GetMaterialApp(
      title: 'State Management Example',
      home: Scaffold(
        appBar: AppBar(title: Text("State Management Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StatelessExample(),
              Divider(), // Pemisah visual
              StatefulExample(),
              Divider(), // Pemisah visual
              GetXExample(),
            ],
          ),
        ),
      ),
    );
  }
}

// --- Bagian 3: Contoh Stateless Widget ---
// Tidak memiliki state internal yang bisa berubah
class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Stateless Widget Example",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Hello from Stateless Widget! (Tidak ada tombol hitung)"),
        ],
      ),
    );
  }
}

// --- Bagian 4: Contoh Stateful Widget ---
// Menggunakan setState() untuk memperbarui state internal
class StatefulExample extends StatefulWidget {
  @override
  _StatefulExampleState createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Stateful Widget Example",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Counter: $counter'),
          ElevatedButton(
            onPressed: () {
              // Memaksa widget untuk build ulang dengan nilai baru
              setState(() {
                counter++;
              });
            },
            child: Text("Increment Stateful"),
          ),
        ],
      ),
    );
  }
}

// --- Bagian 5: Contoh GetX Widget ---
// Menggunakan Obx() untuk mendengarkan perubahan pada controller
class GetXExample extends StatelessWidget {
  // Membuat instance controller dan menempatkannya di memori GetX
  final CounterController c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "GetX State Management Example",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // Obx hanya akan rebuild saat c.counter berubah
          Obx(
                () => Text('Counter: ${c.counter.value}'),
          ),
          ElevatedButton(
            // Memanggil method di controller
            onPressed: c.increment,
            child: Text("Increment with GetX"),
          ),
        ],
      ),
    );
  }
}