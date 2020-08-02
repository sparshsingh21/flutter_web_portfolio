import 'package:flutter/material.dart';
import 'package:sparshsingh/config/skills.dart';
import 'package:sparshsingh/widgets/responsive_widget.dart';
import 'package:sparshsingh/widgets/skills_widget.dart';


class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: GridView.count(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3),
          children: List.generate(
              skills.length, (index) => SkillWidget(skills[index], 0)),
        ),
      smallScreen: ListView.builder(
          itemCount: skills.length,
          itemBuilder: (context, index) => SkillWidget(
              skills[index], (index == skills.length - 1 ? 16.0 : 0))),
    );
  }
}