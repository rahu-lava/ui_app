import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_app/Screens/Home/Data/menu_items.dart';

class CustomGrid extends StatelessWidget {
  CustomGrid({super.key});

  // final List<String> items =
  //     List<String>.generate(20, (index) => 'Item $index');
  // final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: StaggeredGridView.countBuilder(
      itemCount: menuItems.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const Text(
            "Found 80 Results",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          );
        } else {
          final items = menuItems[index - 1];
          return DishCard(
              imageUrl: 'lib/assets/dish1.jpg',
              dishName: items["dishName"],
              description: items["description"],
              calories: items["calories"],
              price: items["price"]);
        }
        // DishCard('lib/assets/7309681.jpg',"Chicken Kabab","Lets Taste",68,80.78,)
      },
      staggeredTileBuilder: (int index) {
        return const StaggeredTile.fit(2);
      },
      crossAxisCount: 4,
      mainAxisSpacing: 30.0,
      crossAxisSpacing: 10.0,
    ));
  }
}

class DishCard extends StatelessWidget {
  // const DishCard({super.key});

  final String imageUrl;
  final String dishName;
  final String description;
  final int calories;
  final double price;

  const DishCard({
    super.key,
    required this.imageUrl,
    required this.dishName,
    required this.description,
    required this.calories,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'lib/assets/dish1.jpg',
          width: 120,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          dishName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          description,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 183, 183, 183)),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/fire.png',
              width: 22,
            ),
            Text(
              "$calories Calories",
              style: const TextStyle(color: Colors.red),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/dollar.png',
              width: 15,
            ),
            Text(
              "$price",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
