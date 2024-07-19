// * Fonctionnement OK
import 'package:flutter/material.dart';
import 'package:frontend/app.hobbies/app.hobbies.image.dart';
import 'package:frontend/app.hobbies/app.hobbies.title.dart';

class HobbiesCard extends StatefulWidget {
  const HobbiesCard({super.key});

  @override
  State<HobbiesCard> createState() => _HobbiesCardState();
}

class _HobbiesCardState extends State<HobbiesCard> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 160,
      child: Card(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
        ),
        color: Color.fromRGBO(47, 112, 175, 1),
        child: Column(
          children: [
            HobbiesImage(assetName: "assets/images/titeuf.jpg"),
            ListTile(title: HobbiesCardTitle())
          ],
        ),
      ),
    );
  }
}
