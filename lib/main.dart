import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVP',
      theme: ThemeData(
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Color.fromRGBO(0, 162, 132, 0.95),
          ),
          headline6: TextStyle(
            color: Color.fromRGBO(0, 162, 132, 0.95),
          ),
          headline5: TextStyle(
            color: Color.fromRGBO(0, 162, 132, 0.95),
          ),
        ),
        primaryColor: Color(0xff00A284),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}
