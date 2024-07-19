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
    return CustomScrollView(scrollDirection: Axis.horizontal, slivers: [
      SliverPadding(
        padding: const EdgeInsets.all(36),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            const [
              HobbiesImageTop(assetName: "images/lectures/BD1.jpg"),
              SizedBox(width: 10.0),
              HobbiesImageTop(assetName: "images/lectures/BD(2).jpg"),
              SizedBox(width: 10.0),
              HobbiesImageTop(assetName: "images/lectures/BD(3).jpg"),
              SizedBox(width: 10.0),
              HobbiesImageTop(assetName: "images/lectures/BD(4).jpg"),
              SizedBox(width: 10.0),
              HobbiesImageTop(assetName: "images/lectures/BD(5).jpg"),
              SizedBox(width: 10.0),
            ],
          ),
        ),
      )
    ]);
  }
}
