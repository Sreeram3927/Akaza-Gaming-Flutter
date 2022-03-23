import 'package:flutter/material.dart';
import 'package:flutter_test_web/actions/buttons.dart';
import 'package:flutter_test_web/app_bar/app_bar.dart';
import 'package:flutter_test_web/views/centered_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Desktop extends StatelessWidget {
  const Desktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
  
        Text(
          'AKAZA GAMING',
          style: GoogleFonts.cinzelDecorative(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 20.0,
            color: Colors.white70,
            decoration: TextDecoration.none,
            
          )
        ),
  
        loGo(),

       const Calltoaction()
      ]
    );
      

  }
}

Widget loGo() {
  return Column(
    children: [

      Text(
            'MY LOGO',
            style: GoogleFonts.architectsDaughter(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 5.0,
              color: Colors.white60,
              decoration: TextDecoration.none
            )
          ),
      
          const SizedBox(height: 20,),
      
          const CircleAvatar(
            radius: 84.0,
            backgroundColor: Colors.white,
            child: CircleAvatar(
          
              backgroundImage: AssetImage('assets/logo.jpg'),
              radius: 80.0,
          
            ),
          ),

    ],
  );
}

