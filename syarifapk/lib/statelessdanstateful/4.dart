import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// Halaman utama (Stateful karena ada perubahan tampilan)
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isHidden = true;
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Field untuk email
          TextField(
            controller: emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              prefixIcon: const Icon(Icons.email),
            ),
          ),

          const SizedBox(height: 20),

          // Field untuk password
          TextField(
            controller: passC,
            autocorrect: false,
            obscureText: isHidden,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              prefixIcon: const Icon(Icons.vpn_key),
              suffixIcon: IconButton(
                icon: Icon(
                  isHidden ? Icons.remove_red_eye : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    isHidden = !isHidden;
                  });
                },
              ),
            ),
          ),

          const SizedBox(height: 50),

          // Tombol login
          ElevatedButton(
            onPressed: () {
              print("LOGIN DENGAN : EMAIL (${emailC.text}) & PASS (${passC.text})");
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              backgroundColor: Colors.red[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const Text("LOGIN"),
          ),
        ],
      ),
    );
  }
}
