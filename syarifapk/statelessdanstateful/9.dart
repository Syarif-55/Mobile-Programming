import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// Halaman utama
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Drawer
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20),
              height: 150,
              width: double.infinity,
              color: Colors.blue,
              child: const Text(
                "DASHBOARD MENU",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),

            // Isi Drawer
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // Deretan menu Home dan Product berulang
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE HOME"),
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE PRODUCT"),
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text("Product"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE HOME"),
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE PRODUCT"),
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text("Product"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE HOME"),
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE PRODUCT"),
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text("Product"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE HOME"),
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE PRODUCT"),
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text("Product"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE HOME"),
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE PRODUCT"),
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text("Product"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE HOME"),
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: () => print("PINDAH KE PAGE PRODUCT"),
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text("Product"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
