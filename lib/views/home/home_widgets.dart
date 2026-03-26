import 'package:flutter/material.dart';
import '../../constants/color.dart';

Widget addStoryWidget({required double size, required IconData iconData}){
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [
              greenGradient.lightShade,
              greenGradient.darkShade,
            ]
        )//LinearGradient
    ),//BoxDecoration
    child: Icon(iconData, color: Colors.white,),
  );//Container
}

Widget storyWidget({required double size, required String imageUrl}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
      image: DecorationImage(
          image: NetworkImage(imageUrl),
              fit: BoxFit.cover
      )//DecorationImage
    ),//BoxDecoration
   ),//Container
  );//Padding
}