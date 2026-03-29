import 'package:flutter/material.dart';
import '../../constants/color.dart';

Widget gradientIconButton({
  required double size,
  IconData? iconData,
  int? counterText, String? text,
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
        child: iconData!=null?Icon(iconData, color: Colors.white,
        ):Center(child: counterText!=null?Text(counterText.toString(), style: const TextStyle(color: Colors.white),):const SizedBox()),//Icon
      ), //container
      text != null
          ? const SizedBox(height: 10) //SizedBox
          : const SizedBox(), //SizedBox
      text != null
          ? Text(text, style: TextStyle(color: grayColor.lightShade))
          : const SizedBox(), // Text
    ],
  ); //Column
}

Widget storyWidget({
  required double size,
  required String imageUrl,
  required String text,
  bool showGreenStrip = false,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: showGreenStrip
                ? Border.all(color: greenColor, width: 2)
                : null,
          ), //BoxDecoration
          child: Padding(
            padding: EdgeInsets.all(showGreenStrip ? 2.2 : 0.0),
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
