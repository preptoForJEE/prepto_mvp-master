import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EnterScreen extends StatefulWidget {
  @override
  _EnterScreenState createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  Widget get educator {
    return Column(
      children: <Widget>[
        FaIcon(
          FontAwesomeIcons.chalkboard,
          color: Theme.of(context).primaryColor,
          size: 105,
        ),
        SizedBox(
          height: 32,
        ),
        Container(
          width: 105,
          height: 37,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            elevation: 5,
            margin: EdgeInsets.zero,
            child: Center(
              child: Text(
                "Educator",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            color: Color.fromRGBO(0, 162, 132, 0.88),
          ),
        )
      ],
    );
  }

  Widget get student {
    return Column(
      children: <Widget>[
        FaIcon(
          FontAwesomeIcons.child,
          color: Theme.of(context).primaryColor,
          size: 105,
        ),
        SizedBox(
          height: 32,
        ),
        Container(
          width: 105,
          height: 37,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            elevation: 5,
            margin: EdgeInsets.zero,
            child: Center(
              child: Text(
                "Student",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            color: Color.fromRGBO(0, 162, 132, 0.88),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Enter as",
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 64,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[educator, student],
          )
        ],
      ),
    );
  }
}
