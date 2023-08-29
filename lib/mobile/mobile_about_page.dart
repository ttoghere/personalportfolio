// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../web/widgets/widgets.dart';
import 'widgets/mobile_tabs.dart';

class MobileAboutPage extends StatefulWidget {
  final str;
  static const routeName = "/about";
  const MobileAboutPage({super.key, required this.str});

  @override
  State<MobileAboutPage> createState() => _MobileAboutPageState();
}

class _MobileAboutPageState extends State<MobileAboutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      endDrawer: mobileDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Introduction - First Section
              CircleAvatar(
                radius: 117,
                backgroundColor: Colors.red[900],
                child: const CircleAvatar(
                  radius: 110,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/ben.jpeg"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Sans(
                        text: "About Me",
                        size: 35,
                        fontWeight: FontWeight.bold),
                    const SizedBox(
                      height: 25,
                    ),
                    const Sans(
                        text:
                            "Hello! I'm İsmail Tunç Kankılıç.\nI specialize in flutter development",
                        size: 13,
                        fontWeight: FontWeight.w700),
                    const Sans(
                        text:
                            "I strive to ensure astounding performance with state of ",
                        size: 13,
                        fontWeight: FontWeight.w700),
                    const Sans(
                        text:
                            "The art security for Android, Ios, Web, Mac, Linux",
                        size: 13,
                        fontWeight: FontWeight.w700),
                    const SizedBox(
                      height: 25,
                    ),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        skillTag(skill: "Flutter"),
                        skillTag(skill: "Firebase"),
                        skillTag(skill: "Android"),
                        skillTag(skill: "Ios"),
                        skillTag(skill: "Mac"),
                        skillTag(skill: "Windows")
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //Web Development - Second Section
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedCardWeb(
                        fit: BoxFit.contain,
                        height: 200,
                        width: 200,
                        reverse: false,
                        imagePath: "assets/webL.png",
                        text: "Web Development"),
                    SizedBox(
                      height: 30,
                    ),
                    Sans(
                        text: "First of all i'm here for Developing Web Apps",
                        size: 15,
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      height: 10,
                    ),
                    AnimatedCardWeb(
                        height: 200,
                        width: 200,
                        fit: BoxFit.contain,
                        reverse: true,
                        imagePath: "assets/app.png",
                        text: "Mobile App Development"),
                    SizedBox(
                      height: 30,
                    ),
                    Sans(
                        text:
                            "Do you need a responsive,a high performance and a beautiful app?\nContact me...",
                        size: 15,
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      height: 10,
                    ),
                    AnimatedCardWeb(
                        fit: BoxFit.contain,
                        reverse: true,
                        height: 200,
                        width: 200,
                        imagePath: "assets/firebase.png",
                        text: "Back-end development"),
                    SizedBox(
                      height: 30,
                    ),
                    Sans(
                        text:
                            "Do you want your back-end to be highly scaleable and secure?\nLet's have a conversation on how i can help you with that...",
                        size: 15,
                        fontWeight: FontWeight.bold),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    ));
  }

  Container skillTag({required String skill}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red[900]!,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(7),
      child: Text(
        skill,
        style: GoogleFonts.openSans(fontSize: 25),
      ),
    );
  }

  Container mobileDrawer() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.blue[900]!,
            Colors.red[900]!,
          ],
          stops: const [0.0, 0.5, 1.0],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: DrawerHeader(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red[900]!, width: 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/ben.jpeg",
                    ),
                  ),
                ),
              ),
            ),
            const MobileTabs(
              text: "Home",
              route: "/",
              icon: Icons.home,
            ),
            const SizedBox(
              height: 20,
            ),
            const MobileTabs(
              text: "Works",
              route: "/works",
              icon: Icons.settings,
            ),
            const SizedBox(
              height: 20,
            ),
            const MobileTabs(
              text: "Blog",
              route: "/blog",
              icon: Icons.list,
            ),
            const SizedBox(
              height: 20,
            ),
            const MobileTabs(
              text: "About",
              route: "/about",
              icon: Icons.person,
            ),
            const SizedBox(
              height: 20,
            ),
            const MobileTabs(
              text: "Contact",
              route: "/contact",
              icon: Icons.call,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher(
                    imagePath: "assets/instagram.svg",
                    url: "https://www.instagram.com/flutteradam/"),
                urlLauncher(
                    imagePath: "assets/github.svg",
                    url: "https://github.com/ttoghere"),
                urlLauncher(
                    imagePath: "assets/linkedin.svg",
                    url:
                        "https://www.linkedin.com/in/ismail-tun%C3%A7-kank%C4%B1l%C4%B1%C3%A7-3a2654235/")
              ],
            )
          ],
        ),
      ),
    );
  }

  IconButton urlLauncher({required String imagePath, required String url}) {
    return IconButton(
      onPressed: () async {
        final uri = Uri.parse(url);
        log("Url1");
        if (await canLaunchUrl(uri)) {
          launchUrl(uri);
        } else {
          null;
        }
        log("Url2");
      },
      icon: SvgPicture.asset(
        imagePath,
        width: 35,
        color: Colors.white,
        height: 35,
      ),
    );
  }
}
