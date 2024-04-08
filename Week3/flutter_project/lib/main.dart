import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "GDSC 모바일 스터디"),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1
          )
        ),
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.white.withOpacity(0),
        title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w800
        ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 25),
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0),
                ),
                alignment: Alignment.center,
                child: Text("과제", 
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),),
              )
            ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 150,
              height: 150,
              // margin: EdgeInsets.only(top: 26, left: 27),
              decoration: BoxDecoration(
                  color: Color.fromARGB(225, 255, 255, 255),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 120,
                        height: 25,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                        ),
                        child: Text("오늘의 과제",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Container(
                        width: 120,
                        height: 25,
                        margin: EdgeInsets.only(top: 20),
                        // padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                        ),
                        child: Icon(
                          Icons.book,
                          size: 60,
                        )
                      )],
                  )
                ],
              ), 
            ),
            Container(
              width: 150,
              height: 150,
              // margin: EdgeInsets.only(top: 26, left: 27),
              decoration: BoxDecoration(
                  color: Color.fromARGB(225, 255, 255, 255),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 120,
                        height: 25,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                        ),
                        child: Text("수행한 과제",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Container(
                        width: 120,
                        height: 25,
                        margin: EdgeInsets.only(top: 20),
                        // padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                        ),
                        child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: Icon(Icons.collections_bookmark, size: 60, color: Colors.black,),
                        )
                      )],
                  )
                ],
              ), 
            )
          ],
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 20, right: 200),
                padding: EdgeInsets.only(right: 30),
              width: 150,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0)
              ),
              child: Text("나의 수행도", 
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800
                ),
              ),
            ),
            TableCalendar(
  firstDay: DateTime.utc(2010, 10, 16),
  lastDay: DateTime.utc(2030, 3, 14),
  focusedDay: DateTime.now(),
  headerStyle: HeaderStyle(
    formatButtonVisible: false,
    titleCentered: true,
    leftChevronVisible: false,
    rightChevronVisible: false
  ),
),
Column(
  children: [
    Container(
      margin: EdgeInsets.only(right: 250),
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0)
      ),
      child: Text("나의 다짐",
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w700,
    ),),
    ),
    Container(
      margin: EdgeInsets.only(top: 3, left: 20, right: 80),
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0)
      ),
      child: Text("과제를 모두 죽이겠다. 그르르르",
      softWrap: false,
    style: TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w700,
    ),),
    )
  ],
),
          ],
        ), 
        ],
      )
    );
  }
}