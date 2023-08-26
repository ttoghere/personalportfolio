// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class WebAboutPage extends StatefulWidget {
  final str;
  const WebAboutPage({
    Key? key,
    required this.str,
  }) : super(key: key);

  @override
  State<WebAboutPage> createState() => _WebAboutPageState();
}

class _WebAboutPageState extends State<WebAboutPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
