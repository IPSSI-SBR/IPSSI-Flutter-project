import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class HobbiesStars extends StatefulWidget {
  const HobbiesStars({super.key});

  @override
  State<HobbiesStars> createState() => _HobbiesStarsState();
}

class _HobbiesStarsState extends State<HobbiesStars> {
  double value = 3.0;

  @override
  Widget build(BuildContext context) {
    return RatingStars(
      value: value,
      onValueChanged: (v) {
        //
        setState(() {
          value = v;
        });
      },
      starBuilder: (index, color) => Icon(
        Icons.star_rate_sharp,
        color: color,
      ),
      starCount: 5,
      starSize: 20,
      valueLabelColor: const Color(0xff9b9b9b),
      valueLabelTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 12.0),
      valueLabelRadius: 10,
      maxValue: 5,
      starSpacing: 2,
      maxValueVisibility: true,
      valueLabelVisibility: false,
      animationDuration: const Duration(milliseconds: 1000),
      valueLabelPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
      valueLabelMargin: const EdgeInsets.only(right: 8),
      starOffColor: const Color(0xffe7e8ea),
      starColor: Colors.yellow,
    );
  }
}
