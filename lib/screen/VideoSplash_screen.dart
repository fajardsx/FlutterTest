import 'dart:async';

import 'package:flutter_myapp/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoSplashScreen extends StatefulWidget{
  @override
  VideoSplashScreenState createState()=> new VideoSplashScreenState();
}

class VideoSplashScreenState extends State<VideoSplashScreen>{
    VideoPlayerController _videoPlayerController;
    VoidCallback listener;

    @override
    @override
    void initState(){
      super.initState();
      listener = (){
        setState(() {
          
        });
      };
      initVideo();
      _videoPlayerController.play();

      startTime();

    }

    startTime() async{
      var _duration = new Duration(seconds: 5);
      return new Timer(_duration,navigationPage);
    }
    
    void navigationPage(){
      _videoPlayerController.setVolume(0.0);
      _videoPlayerController.removeListener(listener);
      Navigator.of(context).pop(VIDEO_SPLASH);
      Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
    }

    void initVideo(){
      _videoPlayerController = VideoPlayerController.asset('assets/videos/aeologic_logo.mp4')
      ..addListener(listener)
      ..setVolume(1.0)
      ..initialize()
      ..play();
    }

    @override
    void deactivate(){
      if(_videoPlayerController != null){
        _videoPlayerController.setVolume(0.0);
        _videoPlayerController.removeListener(listener);
      }
      super.deactivate();
    }

    @override
    void dispose(){
      if(_videoPlayerController != null){
        _videoPlayerController.dispose();
      }
      super.dispose();
    }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Stack(fit: StackFit.expand,
          children: <Widget>[
            new AspectRatio(
              aspectRatio: 9/16,
              child: Container(
                child: (_videoPlayerController != null?VideoPlayer(_videoPlayerController):Container()),
              ),
            )
          ],
        ),
      );
    }
}