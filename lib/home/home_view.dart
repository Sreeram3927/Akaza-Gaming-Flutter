import 'package:flutter/material.dart';
import 'package:flutter_test_web/views/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'website.dart';


class Homeview extends StatelessWidget {
  const Homeview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double cvHt = 0.0;
    double cvWh = 0.0;

    double ht = 0.0;
    double akSize = 0.0;
    double akSpace = 0.0;
    double ssb = 0.0;
    double mySize = 0.0;
    double radi = 0.0;
    double bd = 0.0;
    double len = 0.0;
    double thick = 0.0;
  
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          cvHt = 45.0;
          cvWh = 60.0;
          ht = 100.0;
          akSize = 50.0;
          akSpace = 20.0;
          ssb = 30.0;
          mySize = 30.0;
          radi = 100.0;
          bd = 105.0;
          len = 50.0;
          thick = 6.0;
        }
        
        else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          cvHt = 45.0;
          cvWh = 60.0;
          ht = 100.0;
          akSize = 35.0;
          akSpace = 20.0;
          ssb = 45.0;
          mySize = 25.0;
          radi = 90.0;
          bd = 95.0;
          len = 60.0;
          thick = 5.0;
        }

        else {
          cvHt = 30.0;
          cvWh = 24.0;
          ht = 100.0;
          akSize = 25.0;
          akSpace = 17.0;
          ssb = 70.0;
          mySize = 20.0;
          radi = 100.0;
          bd = 105.0;
          len = 60.0;
          thick = 5.0;
        }
        
        return CenteredView(
          height: cvHt,
          width: cvWh,
          child: Container(
            
            decoration: BoxDecoration(
              color: Colors.black26,
              border: Border.all(width: 2.0, color: Colors.white24),
              borderRadius: const BorderRadius.all(Radius.circular(10.0))
            ),
      
            child: UiWeb(
              height: ht,
              titleSize: akSize,
              titleSpace: akSpace,
              box: ssb,
              secondarySize: mySize,
              iconRadius: radi,
              border: bd,
              lineLength: len,
              lineThick: thick,
            ),
          ),
        );
      }
    );
  }
}