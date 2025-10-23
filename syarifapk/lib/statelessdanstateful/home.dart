import 'package:flutter/material.dart';
import './product.dart'; // Import halaman ProductPage

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE HOME"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman ProductPage
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),
            );
          },
          child: const Text("NEXT PAGE >>>"),
        ),
      ),
    );
  }
}
