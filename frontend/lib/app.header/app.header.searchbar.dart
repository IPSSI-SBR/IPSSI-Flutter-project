// *Fonctionnement OK

import 'package:flutter/material.dart';
import 'package:frontend/app.api/app.api.request.dart';

class HeaderSearchBar extends StatefulWidget {
  const HeaderSearchBar({super.key});

  @override
  State<HeaderSearchBar> createState() => _HeaderSearchBarState();
}

class _HeaderSearchBarState extends State<HeaderSearchBar> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchBar(
        backgroundColor: const WidgetStatePropertyAll(
          Color.fromRGBO(236, 230, 240, 1),
        ),
        hintText: "Vous recherchez ...",
        padding: const WidgetStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0)),
        onTap: () {},
        onChanged: (_) {},
        onSubmitted: (value) => {Hobbies.searchHobby(value)},
        leading: const Icon(
          Icons.search,
          color: Color.fromRGBO(128, 100, 145, 1),
        ),
      ),
    );
  }
}
