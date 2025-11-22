import 'package:flutter/material.dart';
import 'package:get/get.dart';

// --- 1. GetX Controller dengan Workers ---
class WorkerController extends GetxController {
  // Variabel reaktif yang akan kita monitor
  var count = 0.obs;

  @override
  void onInit() {
    // ever: Memanggil worker setiap kali 'count' berubah
    ever(count, (_) => print("ever: Count changed to $count"));

    // once: Memanggil worker hanya satu kali saat 'count' berubah untuk pertama kalinya
    once(count, (_) => print("once: Count changed to $count"));

    // interval: Memanggil worker setiap 2 detik, HANYA jika ada perubahan pada 'count'
    // Jika ada banyak perubahan dalam 2 detik, hanya yang terakhir yang akan diproses
    interval(
        count,
            (_) => print("interval: Count changed to $count"),
        time: Duration(seconds: 2)
    );

    super.onInit();
  }

  // Fungsi untuk menambah nilai count
  void increment() {
    count++;
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
        appBar: AppBar(title: Text("Workers Example")),
        body: WorkerExample(),
      ),
    );
  }
}

// --- 3. UI Widget (WorkerExample) ---
class WorkerExample extends StatelessWidget {
  // Menginisialisasi Controller menggunakan GetX
  final WorkerController wc = Get.put(WorkerController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Obx untuk menampilkan nilai 'count'
          Obx(
                  () => Text(
                  "Count: ${wc.count}",
                  style: TextStyle(fontSize: 24)
              )
          ),

          SizedBox(height: 20),

          ElevatedButton(
            // Memanggil fungsi increment di Controller
            onPressed: wc.increment,
            child: Text("Increment"),
          ),
        ],
      ),
    );
  }
}