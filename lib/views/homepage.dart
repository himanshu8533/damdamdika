import 'package:flutter/material.dart';
import 'package:project/constants/color.dart';
import 'package:project/views/home/home_widgets.dart';

import '../widgets/widgets.dart';

class Homepage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Chats",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                ), //Padding
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.group_add, size: 32, color: greenColor),
                ), //Padding
              ],
            ), //Row
            const SizedBox(height: 26), //sizedbox
            const Divider(thickness: 0.6), //divider
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 12.0,
                bottom: 12.0,
              ),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    addStoryWidget(
                      size: 60,
                      iconData: Icons.add,
                      text: "Your Story",
                    ),
                    SizedBox(width: 8.0),
                    Container(
                      height: 100,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          5,
                              (index) =>
                              storyWidget(
                                size: 60,
                                showGreenStrip: true,
                                text: "John Doe",
                                imageUrl:
                                "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
                              ),
                        ),
                      ), //ListView
                    ), //Container
                  ],
                ), //Row
              ),
            ), //padding
            const Divider(thickness: 0.6), //divider
            Expanded(
              child: ListView.separated(
                itemCount: 7,
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index){
                  return Divider(thickness: 0.3,);
                },
                itemBuilder: (context, index) =>
                    messageListTile(
                      context: context,
                      isOnline: true,
                      imageUrl:
                      "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
                      title: "John Doe",
                      subTitle: "how are you",
                      timeFrame: "16:32",
                    ),
              ), //ListView
            ), //Expanded
          ],
        ), //Column
      ), //SafeArea
    ); //Scaffold
  }
}
