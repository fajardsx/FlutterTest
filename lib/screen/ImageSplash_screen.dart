import 'dart:async';

import 'package:flutter_myapp/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ImageSplashScreen extends StatefulWidget{
  @override
  ImageSplashScreenState createState()=> new ImageSplashScreenState();
}

class ImageSplashScreenState extends State<ImageSplashScreen>{
    startTime(){
      var _duration = new Duration(seconds: 2);
      return new Timer(_duration, navigationPage);
    }

    void navigationPage(){
      Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
    }

    @override
    void initState(){
      super.initState();
      startTime();
    }

    @override
    Widget build(BuildContext context){
      return new Scaffold(
        body: new Stack(
          fit:StackFit.expand,
          children: <Widget>[
            new Image.asset('assets/images/aeologic_logo.png')
          ],
        ),
      );
    }
}