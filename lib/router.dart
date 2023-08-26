import 'package:flutter/material.dart';
import 'package:personalportfolio/mobile/mobile_about_page.dart';
import 'package:personalportfolio/mobile/mobile_landing_page.dart';
import 'package:personalportfolio/web/pages/web_about_page.dart';
import 'package:personalportfolio/web/pages/web_landing_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const WebLandingPage();
              } else {
                return const MobileLandingPage();
              }
            },
          ),
        );
      case '/about':
        final args = settings.arguments;
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return WebAboutPage(
                  str: args,
                );
              } else {
                return MobileAboutPage(
                  str: args,
                );
              }
            },
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return const Center(
          child: Text("Error Page"),
        );
      },
    );
  }
}
