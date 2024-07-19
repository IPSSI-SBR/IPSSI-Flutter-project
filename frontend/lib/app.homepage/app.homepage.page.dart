// * Fontionnement OK
import 'package:flutter/material.dart';
import 'package:frontend/app.header/app.header.dart';
import 'package:frontend/app.homepage/app.homepage.button.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: [
                Header(),
              ],
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: HomepageButton(),
            ),
          ],
        ),
      ),
    );
  }
}
