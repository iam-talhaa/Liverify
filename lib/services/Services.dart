import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liver_disease_detection/main.dart';
import 'package:liver_disease_detection/ui/home_screen.dart';

class SplashService {
  void Login(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Navigation_Bar()),
      ),
    );
  }
}
