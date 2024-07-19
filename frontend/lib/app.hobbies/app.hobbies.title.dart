// TODO : Renommer composant
import 'package:flutter/material.dart';
import 'package:frontend/app.hobbies/app.hobbies.stars.dart';

class HobbiesCardTitle extends StatelessWidget {
  const HobbiesCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HobbiesStars(),
        Text(
          "XX Avis",
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
        Text(
          "Titre",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }
}
