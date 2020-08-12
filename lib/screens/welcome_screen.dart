import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prepto_mvp/constants.dart';
import 'package:prepto_mvp/screens/authentication_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void _authenticateAsStudent() {
    Constant.role = "student";
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return AuthenticationPage();
        },
      ),
    );
  }

  void _authenticateAsEducator() {
    Constant.role = "educator";
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return AuthenticationPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 64,
          ),
          Text(
            'Enter as',
            style: TextStyle(
                fontSize: 30, color: Colors.teal, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.queue_play_next,
                      size: 80,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    RaisedButton(
                      onPressed: _authenticateAsEducator,
                      color: Colors.teal,
                      elevation: 12,
                      child: Text(
                        'Educator',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 80,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RaisedButton(
                    onPressed: _authenticateAsStudent,
                    color: Colors.teal,
                    elevation: 12,
                    child: Text(
                      'Student',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 64,
          ),
        ],
      ),
    );
  }
}
