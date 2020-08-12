import 'package:flutter/material.dart';

class ClassTile extends StatefulWidget {
  final int standard;
  final String topic;
  final int length;

  ClassTile({this.standard, this.topic, this.length});

  @override
  _ClassTileState createState() => _ClassTileState();
}

class _ClassTileState extends State<ClassTile> {
  bool isSwitched = false;

  Widget get header {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xffE9E3F8),
        child: Icon(
          Icons.pie_chart,
          size: 20,
        ),
        radius: 20,
      ),
      title: Text(
        "Class ${widget.standard}",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        "${widget.length} minutes",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: RaisedButton(
        color: Color(
          0xffE9E3F8,
        ),
        child: Text(
          "Add Notes",
          style: TextStyle(
            color: Color.fromRGBO(0, 162, 132, 1),
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget get footer {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: Text(
              widget.topic,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.6),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 117,
                height: 36,
                child: RaisedButton(
                  color: Color(0xffE9E3F8),
                  child: Text(
                    "Join",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 162, 132, 1),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Spacer(),
              Icon(Icons.alarm),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
                inactiveThumbColor: Color(0xffE9E3F8),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 8 / 2),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Color.fromRGBO(0, 162, 132, 0.72),
        child: Column(
          children: <Widget>[
            header,
            AspectRatio(
              aspectRatio: 1.8,
              child: Image.asset(
                "assets/images/phClassTile.png",
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            footer,
          ],
        ),
      ),
    );
  }
}
