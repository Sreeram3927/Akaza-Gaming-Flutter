import 'package:flutter/material.dart';
import 'package:flutter_test_web/home/mobile_web.dart';
import 'package:flutter_test_web/views/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'desktop_web.dart';


class Homeview extends StatelessWidget {
  const Homeview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      height: 45.0,
      width: 60.0,
      child: Container(
        color: Colors.black26,
        
        child: const Desktop(),
      ),
    );
  }
}