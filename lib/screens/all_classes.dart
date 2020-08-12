import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prepto_mvp/models/class_placeholder.dart';
import 'package:prepto_mvp/widgets/class_tile.dart';

class AllClasses extends StatelessWidget {
  final List<ClassPlaceholder> data = [
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
    ClassPlaceholder(length: 20, standard: 5, topic: "Topic for the class"),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "All Classes",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((_, index) {
            return ClassTile(
              length: data[index].length,
              standard: data[index].standard,
              topic: data[index].topic,
            );
          }, childCount: data.length),
        )
      ],
    );
  }
}
