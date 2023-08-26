import 'package:flutter/material.dart';
import 'package:personalportfolio/mobile/mobile_landing_page.dart';
import 'package:personalportfolio/router.dart';
import 'package:personalportfolio/web/pages/web_landing_page.dart';
import 'package:url_strategy/url_strategy.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İsmail Tunç Kankılıç',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      initialRoute: "/",
    );
  }
}
