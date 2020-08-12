import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prepto_mvp/screens/all_classes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

final GlobalKey<InnerDrawerState> _innerDrawerKey =
    GlobalKey<InnerDrawerState>();

void _toggle() {
  _innerDrawerKey.currentState.toggle(
      // direction is optional
      // if not set, the last direction will be used
      //InnerDrawerDirection.start OR InnerDrawerDirection.end
      direction: InnerDrawerDirection.start);
}

class _HomeState extends State<Home> {
  Widget _createDrawerHeader() {
    return SafeArea(
      child: Column(children: <Widget>[
        SizedBox(
          height: 16,
        ),
        FaIcon(
          FontAwesomeIcons.user,
          size: 75,
          color: Color.fromRGBO(0, 162, 132, .5),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Name",
            style: TextStyle(
                color: Color.fromRGBO(0, 162, 132, 1),
                fontWeight: FontWeight.bold),
          ),
        ),
        Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              left: -28,
              bottom: 0,
              child: FaIcon(FontAwesomeIcons.trophy,
                  size: 20, color: Color.fromRGBO(0, 162, 132, 1)),
            ),
            Text("Achievement",
                style: TextStyle(
                  color: Color.fromRGBO(0, 162, 132, 1),
                ))
          ],
        )
      ]),
    );
  }

  Widget _createDrawerItem({IconData icon, String title, String route}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 8,
            child: FaIcon(
              icon,
              color: Color.fromRGBO(97, 0, 237, 0.6),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(color: Color(0xff6100ED)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get drawer {
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        _createDrawerHeader(),
        SizedBox(
          height: 32,
        ),
        _createDrawerItem(
          icon: Icons.account_box,
          title: "Classes",
        ),
        _createDrawerItem(
          icon: Icons.local_library,
          title: "Tests",
        ),
        _createDrawerItem(icon: Icons.assignment, title: "Assignment"),
        _createDrawerItem(
            icon: FontAwesomeIcons.exchangeAlt, title: "Switch Role"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      key: _innerDrawerKey,
      onTapClose: true,
      swipe: true,
      colorTransitionChild: Color(0xffE9E3F8),
      colorTransitionScaffold: Colors.transparent,
      proportionalChildArea: true,
      leftAnimationType: InnerDrawerAnimation.static,
      rightAnimationType: InnerDrawerAnimation.quadratic,
      backgroundDecoration: BoxDecoration(color: Color(0xffE9E3F8)),
      onDragUpdate: (double val, InnerDrawerDirection direction) {
        print(val);
        print(direction == InnerDrawerDirection.start);
      },
      innerDrawerCallback: (a) => print(a),
      leftChild: drawer,
      scaffold: Scaffold(
        backgroundColor: Color(0xffE9E3F8),
        appBar: AppBar(
          backgroundColor: Color(0xffE9E3F8),
          elevation: 0,
          leading: GestureDetector(
            onTap: _toggle,
            child: Icon(
              Icons.menu,
              color: Color.fromRGBO(3, 112, 91, 1),
              size: 25,
            ),
          ),
        ),
        body: AllClasses(),
      ),
    );
  }
}
