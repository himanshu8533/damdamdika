import 'package:flutter/material.dart';
import '../../constants/color.dart';

Widget addStoryWidget({
  required double size,
  required IconData iconData,
  required String text,
}) {
  return Column(
    children: [
      Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [greenGradient.lightShade, greenGradient.darkShade],
          ), //LinearGradient
        ), //BoxDecoration
        child: Icon(iconData, color: Colors.white),
      ), //container
      SizedBox(height: 10),
      Text(text, style: TextStyle(color: grayColor.lightShade)),
    ],
  ); //Column
}

Widget storyWidget({
  required double size,
  required String imageUrl,
  required String text,
  required bool showGreenStrip,}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: showGreenStrip?Border.all(color: greenColor, width: 2):null), //BoxDecoration
          child: Padding(
            padding: EdgeInsets.all(showGreenStrip?2.2:0.0),
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ), //DecorationImage
              ), //BoxDecoration
            ),
          ),
        ), //container
        SizedBox(height: 10),
        Text(text, style: TextStyle(color: grayColor.lightShade)),
      ],
    ), //Column
  ); //Padding
}
