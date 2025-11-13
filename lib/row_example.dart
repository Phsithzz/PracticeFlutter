import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(

          title: const Text(

            "Row Example",
            style: TextStyle(fontWeight: FontWeight.bold),
            
          ),

          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.white,

        ),
        body: Container(
          // padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          margin: EdgeInsets.all(10),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const Center(
                child: Text(
                  "Sign in to My App",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "User name",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),

              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),

                style: TextStyle(color: Colors.lightBlueAccent),
              ),

              const SizedBox(height: 20),

              const Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton.icon(
                icon: const Icon(Icons.lock),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 20,
                    bottom: 20,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                label: const Text("Sign In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
