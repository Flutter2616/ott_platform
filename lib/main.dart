import 'package:flutter/material.dart';
import 'package:ott_platform/view/home_screen.dart';
import 'package:ott_platform/view/splash_screen.dart';
import 'package:ott_platform/view/web_view_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: 'home',
          routes: {
            '/':(context) => Splashscreen(),
            'home':(context) => Homescreen(),
            'web':(context) => Webscreen(),
          },
        );
      },
    ),
  );
}
