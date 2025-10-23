import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List data = [
    {
      "judul": "Pilihan ke - 1",
      "data": 1,
    },
    {
      "judul": "Pilihan ke - 2",
      "data": 2,
    },
    {
      "judul": "Pilihan ke - 3",
      "data": 3,
    },
  ];

  late int dataAwal;

  @override
  void initState() {
    dataAwal = data[0]['data'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DropdownButton<int>(
          value: dataAwal,
          items: data
              .map(
                (e) => DropdownMenuItem<int>(
              child: Text("${e['judul']}"),
              value: e['data'] as int,
            ),
          )
              .toList(),
          onChanged: (value) {
            setState(() {
              dataAwal = value!;
            });
          },
        ),
      ),
    );
  }
}
