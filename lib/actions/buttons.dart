import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Calltoaction extends StatelessWidget {
  const Calltoaction({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [


          TextButton(
             child: Image.asset(
               'assets/discord.png',
               height: 100.0,
               width: 100.0,
              ),
             onPressed: () async {
               const String url = 'https://discord.gg/YVYrrHRmZE';
               launch(url);
             },
          ),


          TextButton(
             child: Image.asset(
               'assets/instagram.png',
               height: 40.0,
               width: 40.0,
              ),
             onPressed: () async {
               const String url = 'https://www.instagram.com/____akaza____/';
               launch(url);
             },
          ),


          TextButton(
             child: Image.asset(
               'assets/youtube.png',
               height: 40.0,
               width: 40.0,
              ),
             onPressed: () async {
               const String url = 'https://www.youtube.com/channel/UCdhCNdxPjm3o2nIkyU2du_g';
               launch(url);
             },
          ),


          TextButton(
             child: Image.asset(
               'assets/facebook.png',
               height: 40.0,
               width: 40.0,
              ),
             onPressed: () async {
               const String url = 'https://akaza-gaming.web.app/';
               launch(url);
             },
          ),

        ],
      ),
    );
  }
}