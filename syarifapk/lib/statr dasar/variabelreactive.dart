import 'package:flutter/material.dart';
import 'package:get/get.dart';

// --- 1. GetX Controller ---
// Mengelola variabel reaktif
class ReactiveController extends GetxController {
  // Variabel 'name' dibuat reaktif dengan .obs
  var name = "User".obs;

  // Method untuk mengubah nilai variabel reaktif
  void changeName(String newName) {
    // Mengubah nilai dengan mengakses properti .value
    name.value = newName;
  }
}

// --- 2. Main Application Setup ---
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Reactive Variables Example")),
        body: ReactiveExample(),
      ),
    );
  }
}

// --- 3. UI Widget (ReactiveExample) ---
class ReactiveExample extends StatelessWidget {
  // Mendapatkan instance Controller
  final ReactiveController rc = Get.put(ReactiveController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Obx mendengarkan perubahan pada rc.name
          Obx(
            // Akses nilai variabel reaktif (name)
                () => Text("Name: ${rc.name.value}"),
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              // TextField memanggil method changeName di Controller setiap kali teks berubah
              onChanged: rc.changeName,
              decoration: InputDecoration(labelText: "Enter name"),
            ),
          ),
        ],
      ),
    );
  }
}