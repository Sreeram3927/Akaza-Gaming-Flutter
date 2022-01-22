import 'package:flutter/material.dart';
import 'package:flutter_test_web/actions/buttons.dart';
import 'package:flutter_test_web/app_bar/app_bar.dart';
import 'package:flutter_test_web/views/centered_view.dart';
import 'package:google_fonts/google_fonts.dart';


class Mobile extends StatelessWidget {
  const Mobile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      height: 24.0,
      width: 20.0,
      child: Column(
        children: [
    
          const Apbr(),
    
          const SizedBox(height: 10.0,),
    
          Text(
            'MY LOGO(S)',
            style: GoogleFonts.architectsDaughter(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              color: Colors.black,
              decoration: TextDecoration.none
            )
          ),
    
          const SizedBox(height: 10.0,),
    
          Image.asset(
            'assets/logo.jpg',
            height: 175.0,
            width: 175.0,
            fit: BoxFit.fill,
          ),
    
          const SizedBox(height: 20.0,),
    
          Image.asset(
            'assets/logo 2.jpg',
            height: 175.0,
            width: 350.0,
            fit: BoxFit.fill
          ),
    
          const SizedBox(height: 25.0,),
    
          const Calltoaction()
          
        ],
      ),
    );
  }
}