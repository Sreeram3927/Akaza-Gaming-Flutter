import 'package:flutter/material.dart';
import 'package:flutter_test_web/home/home_view.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Akaza Gaming',
      home: Web()
    )
  );
}


class Web extends StatelessWidget {
  const Web({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Stack(
        children: [
    
          Image.asset(
            'assets/Bg 1.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover
          ),
          
          const Scrollbar(
            child: SingleChildScrollView(child: Homeview()),
            showTrackOnHover: true,
            isAlwaysShown: true,
          )
        ]
      ),
    );

  }
}