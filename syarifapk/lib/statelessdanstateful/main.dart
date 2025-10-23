import 'package:flutter/material.dart';
import './home.dart'; // Import file halaman Home

void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Hilangkan label debug
      home: HomePage(), // Halaman utama aplikasi
    );
  }
}
