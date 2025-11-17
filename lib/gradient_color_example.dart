import 'package:flutter/material.dart';

class GradientColorExample extends StatelessWidget {
  const GradientColorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradientColorPage(),
    );
  }
}

class GradientColorPage extends StatelessWidget {
  const GradientColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient( //RaidialGradient
            begin: Alignment.topLeft, //radius:0.5,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Center(child: Text("Gradient Background")),
      ),
    );
  }
}
