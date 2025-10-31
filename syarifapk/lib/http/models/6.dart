import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '/models/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> allUser = [];

  Future getAllUser() async {
    var response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    var data = (json.decode(response.body) as Map<String, dynamic>)['data'];

    allUser.clear(); // pastikan tidak duplikat data
    data.forEach((element) {
      allUser.add(UserModel.fromJson(element));
    });

    print(allUser.length);
  }

  @override
  void initState() {
    super.initState();
    getAllUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future Builder")),
      body: FutureBuilder(
        future: getAllUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Text("Loading..."));
          }

          if (allUser.isEmpty) {
            return Center(child: Text("TIDAK ADA DATA"));
          }

          return ListView.builder(
            itemCount: allUser.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(allUser[index].avatar),
                ),
                title: Text("${allUser[index].firstName} ${allUser[index].lastName}"),
                subtitle: Text(allUser[index].email),
              );
            },
          );
        },
      ),
    );
  }
}
