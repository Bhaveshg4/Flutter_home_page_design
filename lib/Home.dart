import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Emotion.dart';
import 'package:flutter_application_1/exercisefile2.dart';
import 'package:flutter_application_1/exexrcisefile.dart';

import 'activity4.dart';
import 'esercise_3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ]),
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            children: [
              //This row is for the intro greetings
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Hi User name
                            Text(
                              "Hi User",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("23 Nov 2022"),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(12),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    //for another search bar
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: const [Icon(Icons.search), Text("Search")],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How are you today?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz_outlined, color: Colors.white)
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    //emotions
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            EmotionFace(
                              emotionFace: "😫",
                            ),
                            SizedBox(height: 8),
                            Text("Irritated",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            EmotionFace(
                              emotionFace: "😜",
                            ),
                            SizedBox(height: 8),
                            Text("Fun",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            EmotionFace(
                              emotionFace: " 😁",
                            ),
                            SizedBox(height: 8),
                            Text("Good",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            EmotionFace(
                              emotionFace: " 😠",
                            ),
                            SizedBox(height: 8),
                            Text("Angry",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exercises",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //ListView of exercises  //Scrollable
                      Expanded(
                        child: ListView(
                          children: [
                            ExercisePage(),
                            Weidget2(),
                            Exercise3(),
                            Exercise4(),
                            Weidget2()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
