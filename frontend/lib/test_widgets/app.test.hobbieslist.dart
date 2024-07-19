import 'package:flutter/material.dart';
import 'package:frontend/app.hobbies/app.hobbies.card.dart';

class TestHobbiesList extends StatelessWidget {
  const TestHobbiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hobbies List'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(100),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                const [
                  HobbiesCard(),
                  SizedBox(height: 8.0),
                  HobbiesCard(),
                  SizedBox(height: 8.0),
                  HobbiesCard(),
                  SizedBox(height: 8.0),
                  HobbiesCard(),
                  SizedBox(height: 8.0),
                  HobbiesCard(),
                  SizedBox(height: 8.0),
                  HobbiesCard(),
                  SizedBox(height: 8.0),
                  HobbiesCard(),
                  SizedBox(height: 8.0),
                  HobbiesCard(),
                  SizedBox(height: 8.0),
                  HobbiesCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
