// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sans extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  const Sans({
    Key? key,
    required this.text,
    required this.size,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: fontWeight),
    );
  }
}
