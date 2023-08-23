import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;

  const TabsWeb({super.key, required this.title});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
    );
  }
}

/*
Text(
      widget.title,
      style: GoogleFonts.oswald(color: Colors.white, fontSize: 23.0),
    );
 */