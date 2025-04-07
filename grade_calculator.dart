import 'package:flutter/material.dart';

class GradeCalculator extends StatefulWidget {
  @override
  _GradeCalculatorState createState() => _GradeCalculatorState();
}

class _GradeCalculatorState extends State<GradeCalculator> {
  String? selectedSubject;
  final TextEditingController marksController = TextEditingController();
  String grade = "";

  final List<String> subjects = [
    "Artificial Intelligence",
    "DataBase",
    "Mathematics",
    "APP Development",
    "Web Technologies",
    "Compiler Instrustion",
    "OPP",
    "DSA",
    "DAA",
    "Pak Study",
  ];

  String calculateGrade(int marks) {
    if (marks >= 90) return "A+";
    if (marks >= 80) return "A";
    if (marks >= 70) return "B";
    if (marks >= 60) return "C";
    if (marks >= 50) return "D";
    return "F";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grade Calculator",
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 220,
            color: Colors.blueGrey,
              child:Center(
                child: Text("Select a Subject",
                    style: TextStyle(fontSize:18,fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: DropdownButton<String>(
                value: selectedSubject,
                hint: Text("Choose Subject"),
                isExpanded: true,
                items: subjects.map((subject) {
                  return DropdownMenuItem<String>(
                    value: subject,
                    child: Text(subject),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedSubject = newValue;
                  });
                },
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: marksController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Marks",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedSubject != null && marksController.text.isNotEmpty) {
                  int marks = int.tryParse(marksController.text) ?? 0;
                  setState(() {
                    grade = calculateGrade(marks);
                  });
                }
              },
              child: Text("Find Grade"),
            ),
            SizedBox(height: 10),
            if (grade.isNotEmpty)
              Text("Your Grade: $grade", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
