import 'package:flutter/material.dart';
import 'horizontal_screen.dart';
import 'vertical_screen.dart';
import 'signup_page.dart';
import 'grade_calculator.dart';
import 'api_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterPro_Afaq',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterPro_Afaq",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade400, Colors.purple.shade500],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
                  title: Text('Horizontal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,

              ),
                  ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HorizontalScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Vertical',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerticalScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                'SignUp',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Grade',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GradeCalculator()),
                );
              },
            ),

            ListTile(
              title: Text(
                'API Page',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApiPage()),
                );
              },
            ),


          ],
        ),
      ),









      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
               border: Border.all(
                 color: Colors.black,
                 width: 3,
               ),
               borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              child: Center(
                child: Text('Afaq Ahmad' , style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white,
                ),),
              ),

            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text('Imran Khan' , style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white,
                ),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text('Pakistan' , style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white,
                ),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.brown,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text('Istanbul' , style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white,
                ),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text('Nothing is impossible' , style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white,
                ),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.purple,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text('Good Luck' , style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white,
                ),),
              ),
            ),
          ],
        ),
      )
      )







    );
  }
}
