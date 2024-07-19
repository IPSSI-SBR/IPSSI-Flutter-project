import 'package:flutter/material.dart';
import 'package:frontend/app.hobbies/app.hobbies.topImage.dart';

class TestTopList extends StatefulWidget {
  const TestTopList({super.key});

  @override
  State<TestTopList> createState() => _TestTopListState();
}

class _TestTopListState extends State<TestTopList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Text('Hey'),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 18,
              itemBuilder: (context, index) {
                return const SizedBox(
                  width: 100,
                  height: 150,
                  child: Card(
                    child: Text("test"),
                  ),
                );
              })
        ],
      ),
    );
  }
}
