//
// Created on 12-08-2020 at 13:53 by Gunjan

import 'package:flutter/material.dart';

import 'home.dart';

class EducatorPage extends StatefulWidget {
  @override
  _EducatorPageState createState() => _EducatorPageState();
}

class _EducatorPageState extends State<EducatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              SizedBox(
                height: 128,
              ),
              GestureDetector(
                onTap: _startClass,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.book, size: 72, color: Colors.teal),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Start Class",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 64,
              ),
              GestureDetector(
                onTap: _startTest,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.lightbulb_outline, size: 72, color: Colors.teal),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Start Test",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _startClass() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Home();
        },
      ),
    );
  }

  void _startTest() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Home();
        },
      ),
    );
  }
}
