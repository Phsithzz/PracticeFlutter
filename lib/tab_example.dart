import 'package:flutter/material.dart';

class TabExample extends StatelessWidget {
  const TabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TabPage());
  }
}

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: const Text(
            "Tab Example",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.white),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.payment, color: Colors.white),
                text: "Payment",
              ),
              Tab(
                icon: Icon(Icons.settings, color: Colors.white),
                text: "Setting",
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: const [HomeTab(), PaymentTab(), SettingTab()],
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Home");
  }
}

class PaymentTab extends StatelessWidget {
  const PaymentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Payment");
  }
}

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Setting");
  }
}
