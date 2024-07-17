import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loisirs App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/add': (context) => AddPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedFilter = 'Date';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loisirs App'),
        actions: [
          DropdownButton<String>(
            value: selectedFilter,
            onChanged: (String? newValue) {
              setState(() {
                selectedFilter = newValue!;
              });
            },
            items: <String>['Date', 'Ordre Alphabétique']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png', // Assurez-vous d'avoir un logo dans ce chemin
                height: 100,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'un film, une bd, un manga',
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF806491),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Notre sélection des meilleurs tendances pour vous',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'meilleurs tendances',
                style: TextStyle(
                  color: Color(0xFF2F70AF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/placeholder.png', // Assurez-vous d'avoir une image dans ce chemin
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            Container(
              color: Color(0xFF2F70AF),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 5),
                  Text(
                    'Avis',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2F70AF),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/add');
                },
                child: Icon(Icons.add, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un loisir'),
      ),
      body: Center(
        child: Text('Page pour ajouter un loisir'),
      ),
    );
  }
}
