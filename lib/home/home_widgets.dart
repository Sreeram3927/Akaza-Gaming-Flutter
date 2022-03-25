import 'package:flutter/material.dart';
import 'package:flutter_test_web/actions/action.dart';
import 'package:google_fonts/google_fonts.dart';

Widget botWidgets(
  double ftSize,
  double cle,
  double bod,
  double lLength, 
  double lWidth
) {
  return Column(
    children: [

      Text(
        'MY LOGO',
        style: GoogleFonts.architectsDaughter(
          fontSize: ftSize,
          fontWeight: FontWeight.bold,
          letterSpacing: 5.0,
          color: Colors.white60,
          decoration: TextDecoration.none
        )
      ),
  
      const SizedBox(height: 20,),
  
      CircleAvatar(
        radius: bod,
        backgroundColor: Colors.white,
        child: CircleAvatar(
      
          backgroundImage: const AssetImage('assets/logo.jpg'),
          radius: cle,
      
        ),
      ),

      Container(
        height: lLength,
        width: lWidth,
        color: Colors.white
      ),

      const Calltoaction()

    ],
  );
}