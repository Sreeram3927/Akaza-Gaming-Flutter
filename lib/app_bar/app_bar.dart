import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';


double ftsize = 0.0;
double contheight = 0.0;
double height = 0.0;
double width = 0.0;
double space  = 0.0;
double rad = 0.0;



class Apbr extends StatelessWidget {
  const Apbr({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(

      builder: (context, sizingInformation) {

        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {

          ftsize = 40.0;
          height = 90.0;
          width = 180.0;
          contheight = 95.0;
          space = 10.0;
          rad = 35.0;
          
        } else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet){

          ftsize = 35.0;
          height = 60.0;
          width = 120.0;
          contheight = 83.0;
          space = 7.5;
          rad = 30.0;

        } else {

          ftsize = 20.0;
          height = 45.0;
          width = 90.0;
          contheight = 70.0;
          space = 5.0;
          rad = 15.0;

        }

      
        return Container(
          height: contheight,
        
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(5.0)
          ),
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ 
        
              CircleAvatar( 
                backgroundImage: const AssetImage('assets/logo.jpg'),
              radius: rad
              ),
        
              Text(
                'AKAZA GAMING',
                style: GoogleFonts.cinzelDecorative(
                  fontSize: ftsize,
                  fontWeight: FontWeight.bold,
                  letterSpacing: space,
                  color: Colors.black,
                  decoration: TextDecoration.none
                )
              ),
        
            TextButton( 
              child: Image.asset(
                'assets/Discord2.png',
                height: height,
                width: width
                ),
      
                onPressed: () async {
                  const String url = 'https://discord.gg/YVYrrHRmZE';
                  await launch(url);
                }
        
              )
        
            ]
          ),
        );
      }
    );
  }
}
