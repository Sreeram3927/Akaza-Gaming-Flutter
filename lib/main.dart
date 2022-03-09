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
    
          Opacity(
            opacity: 0.7,
            child: FadeInImage.memoryNetwork(
              image: 'https://wallpapercave.com/w/wp7956775',
              placeholder: ,
              fadeInDuration: const Duration(milliseconds: 750),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          
          // const Scrollbar(
          
          //   child: SingleChildScrollView(
          //     child: Homeview()
          //   ),
        
          //   isAlwaysShown: true,
          //   showTrackOnHover: true,
        
          //   scrollbarOrientation: ScrollbarOrientation.right,
          // )
        ]
      ),
    );

  }
}

Widget bgimg(child) {

  Widget child;
  

  return Stack(
    children: [

      const Center(child: CircularProgressIndicator()),
      child

    ],
  );
}