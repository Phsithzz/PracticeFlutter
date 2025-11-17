import 'package:flutter/material.dart';

class ListviewExample extends StatelessWidget {
  const ListviewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Example"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        //listview แบบวนลูป
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text("Person ${index + 1}"),
              subtitle: const Text("Sub"),
              trailing: const Icon(Icons.arrow_right, color: Colors.red),
            );
          },
        ),
        //listview แบบทั่วไป
        // body: ListView(
        //   children: const <Widget>[
        //     ListTile(leading: Icon(Icons.map), title: Text("Item 1")),
        //     ListTile(leading: Icon(Icons.home), title: Text("Item 2")),
        //     ListTile(leading: Icon(Icons.person), title: Text("Item 3")),
        //   ],
        // ),
      ),
    );
  }
}
