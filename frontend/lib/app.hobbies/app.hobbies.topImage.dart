import 'package:flutter/material.dart';

class HobbiesImageTop extends StatelessWidget {
  const HobbiesImageTop({super.key, required this.assetName});

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 100,
        child: Image.asset(
          assetName,
          fit: BoxFit.fitWidth,
        ));
  }
}
