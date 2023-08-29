// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  final String route;

  const TabsWeb({
    Key? key,
    required this.title,
    required this.route,
  }) : super(key: key);

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(widget.route),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            selected = true;
          });
          log("Entered");
        },
        onExit: (event) {
          setState(() {
            selected = false;
          });
          log("Exited");
        },
        child: AnimatedDefaultTextStyle(
          curve: Curves.ease,
          style: selected
              ? GoogleFonts.oswald(
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.white,
                  fontSize: 20,
                  shadows: [
                    const Shadow(
                        color: Colors.black,
                        offset: Offset(0.5, 0.5),
                        blurRadius: 1)
                  ],
                  color: Colors.white)
              : GoogleFonts.oswald(color: Colors.red[900], fontSize: 18),
          duration: const Duration(milliseconds: 100),
          child: Text(widget.title),
        ),
      ),
    );
  }
}
