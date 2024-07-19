// *Fonctionnement OK
import 'package:flutter/material.dart';
import 'package:frontend/app.header/app.header.filter.button.dart';

class HeaderTop extends StatelessWidget {
  const HeaderTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DropdownButtonExample(),
        SizedBox(
            height: 75,
            child: Image.asset(
              "assets/logos/Logo0.png",
              fit: BoxFit.fitWidth,
            )),
        const SizedBox(height: 75, width: 75),
      ],
    );
  }
}
