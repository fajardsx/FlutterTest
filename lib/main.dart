

import 'package:flutter/material.dart';
import 'package:flutter_myapp/screen/AnimatedSplashScreen_screen.dart';
import 'package:flutter_myapp/constant/constant.dart';
import 'package:flutter_myapp/screen/HomePage.dart';
import 'package:flutter_myapp/screen/ImageSplash_screen.dart';
import 'package:flutter_myapp/screen/VideoSplash_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'SplashScreen Test',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new AnimatedSplashScreenScreen(),
      routes: <String,WidgetBuilder>{
        HOME_SCREEN:(BuildContext context)=> new HomeScreen(),
        ANIMATED_SPLASH:(BuildContext context)=> new AnimatedSplashScreenScreen(),
        IMAGE_SCREEN:(BuildContext context)=> new ImageSplashScreen(),
        VIDEO_SPLASH:(BuildContext context)=> new VideoSplashScreen()
      },
    );
  }
}
