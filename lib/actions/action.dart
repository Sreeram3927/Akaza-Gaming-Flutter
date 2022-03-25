import 'package:flutter/material.dart';
import 'package:flutter_test_web/actions/buttons.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Calltoaction extends StatelessWidget {
  const Calltoaction({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double icnSize;
    double contHt;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {

        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          icnSize = 65.0;
          contHt = 100.0;
        }

        else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          icnSize = 50.0;
          contHt = 80.0;
        }

        else {
          icnSize = 40.0;
          contHt = 80.0;

        }

        return MediaIcons(height: contHt, size: icnSize);

      },
    ); 
  }
}