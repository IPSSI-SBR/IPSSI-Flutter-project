import 'package:flutter/material.dart';
import 'package:frontend/app.api/app.api.request.dart';

/// Flutter code sample for [Form].

class FormAddHobby extends StatefulWidget {
  const FormAddHobby({super.key});

  @override
  State<FormAddHobby> createState() => _FormAddHobbyState();
}

class _FormAddHobbyState extends State<FormAddHobby> {
  // late List<String> _categories = [];
  // String selectedCategory = "";

  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  String title = "";
  String description = "";

  @override
  void initState() {
    super.initState();
    // Categories.getAllCategories().then(
    //     (result) => {_categories = result.map((category) => category["name"])});
  }

  void addHobby() async {
    if (_formKey.currentState!.validate()) {
      var data = {
        "title": titleController.text,
        "description": descriptionController.text,
        "rating": 0,
        "votes": 0,
        "category_id": 1,
        "user_id": 1
      };
      Hobbies.addHobbie(data).then((result) => {
            if (result == "success")
              {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Le loisir a été ajouté !")))
              }
            else
              {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Erreur lors de l'ajout")))
              }
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ajout d'un loisir"),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Titre',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez saisir un titre';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Description',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez saisir une description';
                      }
                      return null;
                    },
                  ),
                  // DropdownButtonFormField(
                  //     decoration: const InputDecoration(
                  //       labelText: 'Catégorie',
                  //       border: OutlineInputBorder(),
                  //     ),
                  //     items: _categories
                  //         .map((category) => DropdownMenuItem(
                  //             value: category,
                  //             child: Text(category.toString())))
                  //         .toList(),
                  //     value: selectedCategory,
                  //     onChanged: (value) {
                  //       setState(() {
                  //         selectedCategory = value.toString();
                  //       });
                  //     },
                  //     hint: const Text("Catégorie")),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        addHobby();
                      },
                      child: const Text('Ajouter'),
                    ),
                  ),
                ],
              ),
            )));
  }
}
