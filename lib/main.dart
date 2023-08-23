import 'package:flutter/material.dart';
import 'package:personalportfolio/mobile/mobile_landing_page.dart';
import 'package:personalportfolio/web/web_landing_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İsmail Tunç Kankılıç',
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 800) {
            return const MobileLandingPage();
          } else {
            return const WebLandingPage();
          }
        },
      ),
    );
  }
}
