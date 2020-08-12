//
// Created on 12-08-2020 at 13:54 by Gunjan

import 'package:flutter/material.dart';

class StudentPage extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.book, size: 72, color: Colors.teal),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Join Class",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                ],
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.lightbulb_outline, size: 72, color: Colors.teal),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Join Class",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
