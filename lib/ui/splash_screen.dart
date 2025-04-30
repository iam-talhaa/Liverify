import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liverify/res/Resources.dart';
import 'package:liverify/services/Services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SplashService splashservice = SplashService();
    splashservice.Login(context);
  }

  @override
  Widget build(BuildContext context) {
    print('splash screen called');
    return Scaffold(
      backgroundColor: Greenblue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image(
              height: 250.h,
              width: double.infinity.h,
              image: AssetImage('images/one.png'),
            ),
          ),
          Text(
            "Liverify",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
