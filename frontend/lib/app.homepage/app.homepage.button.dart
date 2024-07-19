// * Fontionnement OK
// TODO : Ajouter la route vers la page du formulaire

import 'package:flutter/material.dart';
import 'package:frontend/app.form/app.form.create.hobbies.dart';

class HomepageButton extends StatelessWidget {
  const HomepageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(
        Color.fromRGBO(47, 112, 175, 1),
      )),
      icon: const Icon(Icons.add),
      tooltip: "Ajouter un loisir",
      color: Colors.white,
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FormAddHobby()));
      },
    );
  }
}
