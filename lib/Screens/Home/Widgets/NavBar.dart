import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => {},
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                size: 20,
                color: Colors.black,
              ),
            ),
            const Text(
              "Search Food",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () => {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'lib/assets/avtar.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
