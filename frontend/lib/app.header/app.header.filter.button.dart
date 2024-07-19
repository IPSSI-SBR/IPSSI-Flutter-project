// * Fontionnement OK
import 'package:flutter/material.dart';

const List<String> list = <String>['Tri', 'Date', 'Nom'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.filter_list_rounded),
      elevation: 16,
      style: const TextStyle(
        color: Color.fromRGBO(128, 100, 145, 1),
      ),
      underline: Container(
        height: 2,
        color: const Color.fromRGBO(128, 100, 145, 1),
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
        if (dropdownValue != 'Tri') {}
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
