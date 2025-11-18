import 'package:flutter/material.dart';

class PandaFoodExample extends StatelessWidget {
  const PandaFoodExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity, //รูปแบบแสงเงา
      ),
      home: PandaFoodPage(),
    );
  }
}

class PandaFoodPage extends StatefulWidget {
  const PandaFoodPage({super.key});

  @override
  State<PandaFoodPage> createState() => _PandaFoodPageState();
}

class _PandaFoodPageState extends State<PandaFoodPage> {
  List<Map<String, String>> cart = [];

  void addToCart(String title, String price) {
    setState(() {
      cart.add({"title": title, "price": price});
    });
  }

  void showCart(BuildContext context) {
    double totalPrice = cart.fold(
      0,
      (sum, item) => sum + double.parse(item["price"]!.substring(1)),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Your Cart"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: cart.map((item) {
              return ListTile(
                title: Text(item["title"]!),
                subtitle: Text(item["price"]!),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      cart.remove(item);
                    });
                    Navigator.of(context).pop();
                    showCart(context);
                  },
                ),
              );
            }).toList(),
          ),
          actions: [
            Text("Total : ${totalPrice.toStringAsFixed(2)}"),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PandaFood"),
        backgroundColor: Colors.pink,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              showCart(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            FoodCard(
              imageUrl:
                  "https://images.ctfassets.net/j8tkpy1gjhi5/5OvVmigx6VIUsyoKz1EHUs/b8173b7dcfbd6da341ce11bcebfa86ea/Salami-pizza-hero.jpg",
              title: "Pancake",
              description: "Deliciuos",
              price: "\$5",
              addToCart: addToCart,
            ),
            FoodCard(
              imageUrl:
                  "https://images.ctfassets.net/j8tkpy1gjhi5/5OvVmigx6VIUsyoKz1EHUs/b8173b7dcfbd6da341ce11bcebfa86ea/Salami-pizza-hero.jpg",
              title: "Pizza",
              description: "Deliciuos",
              price: "\$5",
              addToCart: addToCart,
            ),
            FoodCard(
              imageUrl:
                  "https://images.ctfassets.net/j8tkpy1gjhi5/5OvVmigx6VIUsyoKz1EHUs/b8173b7dcfbd6da341ce11bcebfa86ea/Salami-pizza-hero.jpg",
              title: "Hamburger",
              description: "Deliciuos",
              price: "\$5",
              addToCart: addToCart,
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.addToCart,
  });

  final String imageUrl;
  final String title;
  final String description;
  final String price;
  final Function(String, String) addToCart;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        addToCart(title, price);
                      },
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                      ),
                      label: const Text(
                        "Add To Cart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
