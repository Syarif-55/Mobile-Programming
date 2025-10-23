import 'package:flutter/material.dart';
import './profile.dart'; // Import halaman ProfilePage

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(), // Kosongkan tombol kembali default
        title: const Text("PAGE PRODUCT"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("INI HALAMAN PRODUCT"),
            const SizedBox(height: 50),

            // Deretan tombol navigasi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Tombol kembali ke halaman sebelumnya
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("<<< BACK"),
                ),

                // Tombol menuju halaman berikutnya (ProfilePage)
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: const Text("NEXT PAGE >>>"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
