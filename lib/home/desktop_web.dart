import 'package:flutter/material.dart';
import 'package:flutter_test_web/actions/buttons.dart';
import 'package:flutter_test_web/app_bar/app_bar.dart';
import 'package:flutter_test_web/views/centered_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Desktop extends StatelessWidget {
  const Desktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CenteredView(
      height: 60.0,
      width: 80.0,
      child:Column(
        children: [
  
          const Apbr(),
  
          const SizedBox(height: 20),
      
          Text(
            'MY LOGO(S)',
            style: GoogleFonts.architectsDaughter(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 5.0,
              color: Colors.black,
              decoration: TextDecoration.none
            )
          ),
      
          const SizedBox(height: 20,),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Image.asset(
                'assets/logo.jpg',
                height: 250.0,
                width: 250.0,
                fit: BoxFit.fill,
              ),
              
              
      
              Image.asset(
                'assets/logo 2.jpg',
                height: 250.0,
                width: 450.0,
                fit: BoxFit.fill
              )
                  
            ]
          ),

          const SizedBox(height: 35,),

          const Calltoaction()
        ]
      ),
    );
      

  }
}

