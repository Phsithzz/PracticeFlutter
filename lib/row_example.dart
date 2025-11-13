import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row Example"),
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.white,
          ),
        body: Container(
          padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          child:const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:Text("Sign in to My App"),
            ),
            Text("User name"),
            SizedBox(height:20),
            Text("Password"),
          ],
        ),
        )
      ),
    );
  }
}
