import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaIcons extends StatelessWidget {
  final double height;
  final double size;
  const MediaIcons({ Key? key, required this.height, required this.size }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.transparent,
      child: Container(

        height: height,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 5.0,
              color: Colors.white,
            )
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            TextButton(
               child: Image.asset(
                 'assets/discord.png',
                 height: size,
                 width: size,
                ),
               onPressed: () async {
                 const String url = 'https://discord.gg/YVYrrHRmZE';
                 launch(url);
               },
            ),


            TextButton(
               child: Image.asset(
                 'assets/instagram.png',
                 height: size,
                 width: size,
                ),
               onPressed: () async {
                 const String url = 'https://www.instagram.com/____akaza____/';
                 launch(url);
               },
            ),


            TextButton(
               child: Image.asset(
                 'assets/youtube.png',
                 height: size,
                 width: size,
                ),
               onPressed: () async {
                 const String url = 'https://www.youtube.com/channel/UCdhCNdxPjm3o2nIkyU2du_g';
                 launch(url);
               },
            ),


            TextButton(
               child: Image.asset(
                 'assets/facebook.png',
                 height: size,
                 width: size,
                ),
               onPressed: () async {
                 const String url = 'https://akaza-gaming.web.app/';
                 launch(url);
               },
            ),

          ],
        ),
      ),
    );
  }
}