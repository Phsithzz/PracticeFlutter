import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/camera_page.dart';
import 'package:flutter_app/contact_page.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/profile_page.dart';

//โค้ดไฟล์นี้มีการimport ในpub yml คือcurv,salomon
class CurvMenu extends StatelessWidget {
  const CurvMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: CurvPage(),
    );
  }
}

class CurvPage extends StatefulWidget {
  const CurvPage({super.key});

  @override
  State<CurvPage> createState() => _CurvPageState();
}

class _CurvPageState extends State<CurvPage> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curved NavigationBar "),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          HomePage(),
          CameraPage(),
          ProfilePage(),
          ContactPage(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueGrey,
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        height: 65,
        items: const <Widget>[
          Icon(Icons.home, size: 35, color: Colors.red),
          Icon(Icons.camera, size: 35, color: Colors.red),
          Icon(Icons.person, size: 35, color: Colors.red),
          Icon(Icons.contacts, size: 35, color: Colors.red),
        ],
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
