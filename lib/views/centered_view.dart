import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  const CenteredView({Key? key, required this.child, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200.0),
        child: child,
      )
      
    );
  }
}