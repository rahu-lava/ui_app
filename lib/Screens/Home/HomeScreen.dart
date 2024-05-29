import 'package:flutter/material.dart';
import 'package:ui_app/Screens/Home/Widgets/CustomGrid.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_app/Screens/Home/Widgets/NavBar.dart';
import 'package:ui_app/Screens/Home/Widgets/SearchRow.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> items = List<String>.generate(20, (index) => 'dish$index');
  // final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const NavBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [const SearchRow(), CustomGrid()],
              ),
            )));
  }
}
