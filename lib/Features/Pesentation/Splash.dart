import 'dart:async';

import 'package:flutter/material.dart';
import 'Pages/Str screen/INTROSCREENS/intro_1.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Intro_1())));
    return Scaffold(
      body: Container(
        child: new Stack(alignment: Alignment.center, children: <Widget>[
          Image.asset('D:/DOC_FA/lib/assets/Splash Screen.png',
            height:  MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          Align(
            alignment: Alignment(0.0, 0.8),
            child:Text(
              'Space  X',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily:'Orbitron',
                  color: Color(0xffFFFFFF),
                  fontSize: 32
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}
