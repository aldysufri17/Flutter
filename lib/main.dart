import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text("ID CARD"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[700],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.00, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 70.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                '"Hello World...!!!"',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Name",
              style: TextStyle(color: Colors.white, letterSpacing: 3.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Aldy Sufriyanto",
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 3.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              "Date of Birth",
              style: TextStyle(color: Colors.white, letterSpacing: 3.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "14-09-1999",
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  "089616328907",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  "aldysufriyanto14@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
