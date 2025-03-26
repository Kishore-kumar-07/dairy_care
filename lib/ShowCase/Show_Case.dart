import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class showcase extends StatelessWidget {
  const showcase(
      {Key? key,
      required this.globalKey,
      required this.title,
      required this.description,
      required this.child,
      required this.shapeBorder})
      : super(key: key);
  final GlobalKey globalKey;
  final String title;
  final String description;
  final Widget child;
  final ShapeBorder shapeBorder;

  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: globalKey,
      description: description,
      child: child,
      targetShapeBorder: shapeBorder,
    );
  }
}
