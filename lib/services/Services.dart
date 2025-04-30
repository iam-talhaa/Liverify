import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liverify/main.dart';

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
