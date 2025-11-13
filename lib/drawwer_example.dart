import 'package:flutter/material.dart';

class DrawwerExample extends StatelessWidget {
  const DrawwerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerPage(),
    );
  }
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Application"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding:EdgeInsets.all(0),
          children: const [
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.teal),
            //   child: Text(
            //     "My Header",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Phoosith Pheanchob"), 
              accountEmail: Text("admin@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child:Text("Phoo")
              ),
              decoration:BoxDecoration(
                color:Colors.green
              )
              ),
            ListTile(
              leading:Icon(Icons.home),
              title:Text("Home")
            ),
            ListTile(
              leading:Icon(Icons.settings),
              title:Text("Setting")
            ),
            ListTile(
              leading:Icon(Icons.production_quantity_limits),
              title:Text("Sale Product")
            ),
            ListTile(
              leading:Icon(Icons.check_box),
              title:Text("Checked")
            ),
            ListTile(
              leading:Icon(Icons.file_download),
              title:Text("Downloads")
            )
          ],
        ),
      ),
    );
  }
}
