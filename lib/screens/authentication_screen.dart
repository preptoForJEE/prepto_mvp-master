//
// Created on 12-08-2020 at 13:52 by Gunjan
import 'package:flutter/material.dart';
import 'package:prepto_mvp/constants.dart';
import 'package:prepto_mvp/screens/educator_screen.dart';
import 'package:prepto_mvp/screens/student_screen.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  void _educatorButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return EducatorPage();
        },
      ),
    );
  }

  void _studentButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return StudentPage();
        },
      ),
    );
  }

  final color = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 96,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
            child: TextField(
              textAlign: TextAlign.left,
              keyboardType: TextInputType.phone,
              style: TextStyle(),
              decoration: InputDecoration(
                prefix: Text("+91 "),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                labelText: "mobile number",
                labelStyle: TextStyle(fontSize: 18),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: RaisedButton(
              onPressed: dialogBox,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  "Get OTP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              color: color,
            ),
          )
        ],
      ),
    );
  }

  void dialogBox() {
    String text = "sent";
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "otp has been $text to your number",
                      style: TextStyle(fontSize: 20, color: color),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        labelText: "Enter your OTP",
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              text = "resent";
                            },
                            child: Text(
                              "Resend",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: color,
                              ),
                            ),
                            color: Colors.white,
                          ),
                          RaisedButton(
                            onPressed: Constant.role == "student"
                                ? _studentButton
                                : _educatorButton,
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: color,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
