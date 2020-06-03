import 'package:flutter/material.dart';
import 'package:hgt/my_course.dart';
import 'package:hgt/open_course.dart';
import 'package:hgt/review.dart';

import 'dart:math' as math;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: phoneSize.height * 0.15),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'H',
                        style: TextStyle(
                            fontSize: 70,
                            color: Colors.red,
                            decorationColor: Colors.white)),
                    TextSpan(
                        text: 'G',
                        style: TextStyle(
                            fontSize: 70,
                            color: Colors.yellow,
                            decorationColor: Colors.white)),
                    TextSpan(
                        text: 'T',
                        style: TextStyle(
                            fontSize: 70,
                            color: Colors.green,
                            decorationColor: Colors.white))
                  ]),
            ),
            SizedBox(height: phoneSize.height * .1),
            InkWell(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: phoneSize.width * .7,
                    height: phoneSize.height * .1,
                    alignment: Alignment.center,
                    child: Text("개설 시간표 조회",
                    style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0),
                      ),
                      border: Border.all(color: Colors.red, width: 4),
                    ),),
                  Positioned(
                    top: 13,
                    left: -5,
                    child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Icon(Icons.search, size: 60,)
                    ),
                  )
                ],),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => OpenCoursePage())),
            ),
            SizedBox(height: phoneSize.height * .05),
            InkWell(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: phoneSize.width * .7,
                    height: phoneSize.height * .1,
                    alignment: Alignment.center,
                    child: Text("내 시간표",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0),
                      ),
                      border: Border.all(color: Colors.yellow, width: 4),
                    ),
                  ),
                  Positioned(
                      top: 13,
                      right: 25,
                      child: Image.asset('asset/calendar.jpg', width: 50, height: 50)
                  )
                ],
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => MyCoursePage())),
            ),
            SizedBox(height: phoneSize.height * .05),
            InkWell(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: phoneSize.width * .7,
                    height: phoneSize.height * .1,
                    alignment: Alignment.center,
                    child: Text("수업 리뷰",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0),
                      ),
                      border: Border.all(color: Colors.green, width: 4),
                    ),
                  ),
                  Positioned(
                    top: 9,
                    right: 27,
                    child: Image.asset('asset/review.png', width: 50, height: 50)
                  )
                ],
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ReviewPage())),
            ),
            SizedBox(height: phoneSize.height * .12),
            Text('Handong Time')
          ],
        ),
      ),
    );
  }
}