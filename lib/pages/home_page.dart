//
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import '../utils/emoji.dart';
import '../utils//exercise_list.dart';
// import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // greetings and notifation
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // hi jared!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jared!',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '23 jan, 2023',
                            style: TextStyle(
                              color: Colors.blue[100],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      // notifications
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue[600],
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  // search bar
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // how fo you fell
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      EmojiFace(
                        emojiFace: '😔',
                        feeling: 'Badly',
                      ),
                      EmojiFace(
                        emojiFace: '😊',
                        feeling: 'Fine',
                      ),
                      EmojiFace(
                        emojiFace: '😁',
                        feeling: 'Well',
                      ),
                      EmojiFace(
                        emojiFace: '😆',
                        feeling: 'Excellent',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                  color: Colors.grey[300],
                  child: Center(
                    child: Column(
                      children: [
                        // exercise heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Excercises',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // listview
                        Expanded(
                          child: ListView(
                            children: [
                              Exercise(
                                title: "Speaking skills",
                                subtitle: "15 Exercises",
                                color: Colors.orange,
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                              Exercise(
                                title: "Reading speed",
                                subtitle: "6 Exercises",
                                color: const Color.fromARGB(255, 0, 72, 131),
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ),
                              Exercise(
                                title: "Writing skill",
                                subtitle: "10 Exercises",
                                color: Colors.red,
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                              Exercise(
                                title: "Hearing skill",
                                subtitle: "4 Exercises",
                                color: Colors.green,
                                icon: Icon(
                                  Icons.alarm,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
