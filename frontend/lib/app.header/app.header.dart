// * Fontionnement OK */

import 'package:flutter/material.dart';
import 'package:frontend/app.header/app.header.searchbar.dart';
import 'package:frontend/app.header/app.header.top.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [HeaderTop(), HeaderSearchBar()],
    );
  }
}
