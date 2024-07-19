import 'package:flutter/material.dart';

class HobbiesImage extends StatelessWidget {
  const HobbiesImage({super.key, required this.assetName});

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: 300,
        child: Image.asset(
          assetName,
          fit: BoxFit.fitWidth,
        ));
  }
}
