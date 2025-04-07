import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiPage extends StatefulWidget {
  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  String apiUrl = "https://bgnuerp.online/api/gradeapi"; // Replace with your API link
  List<dynamic> apiData = [];

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        setState(() {
          apiData = jsonDecode(response.body);
        });
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception: $e");
    }
  }

  void clearData() {
    setState(() {
      apiData.clear();
    });
    print("Data cleared from screen!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Data Page"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: fetchData,
                child: Text("Display"),
              ),
              ElevatedButton(
                onPressed: clearData,
                child: Text("Delete All"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ],
          ),
          Expanded(
            child: apiData.isEmpty
                ? Center(child: Text("No Data Available"))
                : ListView.builder(
              itemCount: apiData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(apiData[index].toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}