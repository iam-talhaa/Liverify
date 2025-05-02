import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liverify/res/Resources.dart';
import 'package:liverify/ui/Home/home_screen.dart';
import 'package:liverify/ui/profile/person_screen.dart';
import 'package:liverify/ui/Search/search_screen.dart';
import 'package:liverify/ui/splash_screen.dart';

void main() {
  runApp(Liver_disease_detection());
}

class Liver_disease_detection extends StatefulWidget {
  const Liver_disease_detection({super.key});

  @override
  State<Liver_disease_detection> createState() =>
      _Liver_disease_detectionState();
}

class _Liver_disease_detectionState extends State<Liver_disease_detection> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          home: SplashScreen(),
        );
      },
    );
  }
}

class Navigation_Bar extends StatefulWidget {
  const Navigation_Bar({super.key});

  @override
  State<Navigation_Bar> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation_Bar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Greenblue,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: whiteColor),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_sharp),
            label: 'Notifications',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Messages'),
        ],
      ),
      body:
          <Widget>[
            /// Home page
            HomeScreen(),

            /// Notifications page
            Search_screen(),

            /// Messages page
            PersonScreen(),
          ][currentPageIndex],
    );
  }
}
