import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:seaprojectvasanth/pages/login_page.dart';




    void main(List<String> args) {
      runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home : AnimatedSplashScreen(
              splash:Column(children: [
                Text('Sea Cloud', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize:60),),
              ]
              ),
              splashTransition: SplashTransition.decoratedBoxTransition,
              pageTransitionType: PageTransitionType.fade,
              backgroundColor: Colors.white,
            nextScreen: LoginPage(),

          ),

        );
      }
    }



