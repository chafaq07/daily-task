import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Map<String, dynamic> user;

  HomePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),
      backgroundColor: Colors.blue,
        centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome, ${user['name']}", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Email: ${user['email']}"),
            Text("Gender: ${user['gender']}"),
          ],
        ),
      ),
    );
  }
}
