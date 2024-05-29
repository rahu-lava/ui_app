import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Spice Food",
                    hintStyle: TextStyle(color: Colors.black)),
              ),
            ),
            InkWell(
              onTap: () => {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  color: Color.fromARGB(255, 247, 189, 16),
                  padding: EdgeInsets.all(13.0),
                  child: Image.asset(
                    "lib/assets/filter.png",
                    width: 18,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
