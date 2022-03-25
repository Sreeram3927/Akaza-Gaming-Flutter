import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_widgets.dart';

class UiWeb extends StatelessWidget {

  final double height;
  final double titleSize;
  final double titleSpace;
  final double box;
  final double secondarySize;
  final double iconRadius;
  final double border;
  final double lineLength;
  final double lineThick;


  const UiWeb({ 
    Key? key ,
    required this.height,
    required this.titleSize,
    required this.titleSpace,
    required this.box,
    required this.secondarySize,
    required this.iconRadius,
    required this.border,
    required this.lineLength,
    required this.lineThick
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
  
        Container(
          height: height,
          child: Center(
            child: Text(
              'AKAZA GAMING',
              style: GoogleFonts.cinzelDecorative(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
                letterSpacing: titleSpace,
                color: Colors.white70,
                decoration: TextDecoration.none,
                
              )
            ),
          ),
        ),

        SizedBox(height: box),
  
        botWidgets(secondarySize, iconRadius, border, lineLength, lineThick),
      ]
    );
      

  }
}



