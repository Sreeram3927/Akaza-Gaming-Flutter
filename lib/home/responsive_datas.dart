import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResPo extends StatelessWidget {
  const ResPo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: builder);
  }
}