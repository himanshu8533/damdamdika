import 'package:flutter/material.dart';
import 'package:project/views/home/home_widgets.dart';

import '../constants/color.dart';

Widget messageListTile({
  required BuildContext context,
  required String imageUrl,
  required String title,
  required String subTitle,
  required String timeFrame,
  int? messageCounter,
  bool isOnline = false,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
      children: [
        Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ), //BoxDecoration
              ), //BoxContainer
            ), //Container
            isOnline
                ? Positioned(
                    bottom: 3,
                    right: 3,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        color: greenColor,
                      ),
                    ),
                  )
                : const SizedBox(), //Positioned
          ],
        ), //Stack
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Container(
                  width: MediaQuery.of(context).size.width - 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ), //TextStyle
                      ), //Text
                      Text(
                        timeFrame,
                        style: TextStyle(color: grayColor.lightShade),
                      ), //Text
                    ],
                  ), //row
                ),
              ), //Container
              const SizedBox(height: 14),
              SizedBox(
                width: MediaQuery.of(context).size.width - 120.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subTitle,
                      style: TextStyle(color: grayColor.lightShade),
                    ), //Text
                    messageCounter != null
                        ? gradientIconButton(size: 20,counterText: messageCounter)
                        : const SizedBox(),
                  ],
                ),
              ), //Row
            ],
          ), //column
        ), //padding
      ],
    ), //Row
  ); //Padding
}
