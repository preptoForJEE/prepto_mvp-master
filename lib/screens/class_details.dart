import 'package:flutter/material.dart';

class ClassDetails extends StatefulWidget {
  @override
  _ClassDetailsState createState() => _ClassDetailsState();
}

class _ClassDetailsState extends State<ClassDetails> {
  bool isSaved = false;

  Widget getTextField({String labelText}) {
    return TextField(
      decoration: InputDecoration(
          labelText: labelText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid, color: Color(0xff00A284), width: 2),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid, color: Color(0xff00A284), width: 2),
            borderRadius: BorderRadius.circular(4),
          )),
    );
  }

  Widget getButton() {
    return ButtonTheme(
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
              style: BorderStyle.solid)),
      child: RaisedButton(
          elevation: 5,
          onPressed: () {
            setState(() {
              isSaved = !isSaved;
            });
          },
          color: isSaved ? Color(0xffE9E3F8) : Theme.of(context).primaryColor,
          child: Text(
            isSaved ? "Saved" : "Save",
            style: TextStyle(
                color: isSaved
                    ? Theme.of(context).primaryColor
                    : Color(0xffE9E3F8)),
          )),
    );
  }

  Widget getImageContainer() {
    return Container(
      width: 135,
      height: 135,
      decoration: new BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Color(0xff00A284)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          getImageContainer(),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: getTextField(labelText: "Subject"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: getTextField(labelText: "Topic"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width - 32 - 4) / 2,
                    child: getTextField(labelText: "Class"),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 32 - 4) / 2,
                  child: getTextField(labelText: "Duration"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width - 32 - 4) / 2,
                    child: getTextField(labelText: "Schedule"),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 32 - 4) / 2,
                  child: getTextField(labelText: "Time"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          getButton(),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.chevron_left,
                size: 55,
                color: Theme.of(context).primaryColor,
              ),
              Icon(
                Icons.chevron_right,
                size: 55,
                color: Theme.of(context).primaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
