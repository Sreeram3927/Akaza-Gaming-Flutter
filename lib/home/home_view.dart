import 'package:flutter/material.dart';
import 'package:flutter_test_web/home/mobile_web.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'desktop_web.dart';


class Homeview extends StatelessWidget {
  const Homeview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(

      builder: (context, sizingInformaion) {

        var device = sizingInformaion.deviceScreenType == DeviceScreenType.desktop
          ? const Desktop()
          : const Mobile()
        ;

        return device;
      
      },
    );
  }
}