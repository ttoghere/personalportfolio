// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileTabs extends StatefulWidget {
  final String text;
  final String route;
  final IconData icon;
  const MobileTabs({
    Key? key,
    required this.text,
    required this.icon,
    required this.route,
  }) : super(key: key);

  @override
  State<MobileTabs> createState() => _MobileTabsState();
}

class _MobileTabsState extends State<MobileTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red[900]!,
            Colors.blue[900]!,
            Colors.black,
          ],
          stops: [0.0, 0.5, 1.0],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushReplacementNamed(widget.route);
        },
        leading: Icon(
          widget.icon,
          color: Colors.white,
          size: 30,
        ),
        trailing: Icon(
          widget.icon,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
