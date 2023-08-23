import 'package:flutter/material.dart';
import 'package:personalportfolio/web/widgets/sans.dart';
import 'package:personalportfolio/web/widgets/tabs_web.dart';

class WebLandingPage extends StatefulWidget {
  const WebLandingPage({super.key});

  @override
  State<WebLandingPage> createState() => _WebLandingPageState();
}

class _WebLandingPageState extends State<WebLandingPage> {
  @override
  Widget build(BuildContext context) {
    var hDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.blue[600]!,
                Colors.black,
                Colors.blue[900]!,
                Colors.white
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.0, 0.2, 0.5, 0.7, 1.0],
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TabsWeb(
              title: "Hello",
            ),
            TabsWeb(
              title: "Blog",
            ),
            TabsWeb(
              title: "About",
            ),
            TabsWeb(
              title: "Contact",
            ),
            TabsWeb(
              title: "Works",
            ),
            SizedBox(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //First Page
          SizedBox(
            height: hDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: const SansBold(
                        text: "Hello I'm",
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const SansBold(
                      text: "Ismail Tunç Kankılıç",
                      size: 60,
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 109,
                  backgroundColor: Colors.blue[900],
                  child: CircleAvatar(
                    radius: 106,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 103,
                      backgroundColor: Colors.red[900],
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 100,
                        backgroundImage: AssetImage("assets/ben.jpeg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
