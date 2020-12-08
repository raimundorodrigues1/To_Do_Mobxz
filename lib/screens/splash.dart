import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:todomobx/screens/login_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              child: Image(
            image: AssetImage('lib/image/tarefa.png'),
            width: 100,
            height: 100,
          )),
        ],
      ),
    ));
  }
}
