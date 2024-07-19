import 'package:flutter/material.dart';
import 'package:frontend/app.homepage/app.homepage.button.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Colors.yellowAccent,
                ),
                Text("Top 5 des meilleurs",
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none)),
                Text(
                  "XXX",
                  style: TextStyle(
                      color: Color.fromRGBO(47, 112, 175, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: HomepageButton(),
        )
      ],
    );
  }
}
