import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/mobile/widgets/mobile_tabs.dart';
import 'package:personalportfolio/web/pages/web_landing_page.dart';
import 'package:personalportfolio/web/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileLandingPage extends StatefulWidget {
  static const routeName = "/";
  const MobileLandingPage({super.key});

  @override
  State<MobileLandingPage> createState() => _MobileLandingPageState();
}

class _MobileLandingPageState extends State<MobileLandingPage> {
  @override
  Widget build(BuildContext context) {
    var wDevice = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(
            size: 35,
            color: Colors.black,
          ),
        ),
        endDrawer: Container(
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
        ),
        body: ListView(
          children: [
            CircleAvatar(
              radius: 117,
              backgroundColor: Colors.red[900],
              child: const CircleAvatar(
                radius: 110,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/ben.jpeg"),
              ),
            ),

            //First Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red[900],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: const Sans(
                            text: "Hello I'm",
                            size: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Sans(
                        text: "İsmail Tunç \nKankılıç",
                        size: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      const Sans(
                          text: "Mobile Developer",
                          size: 22,
                          fontWeight: FontWeight.w700),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  infoTile(
                      icons: Icons.email,
                      text: "ismail.tunc.kankilic@gmail.com"),
                  infoTile(
                    icons: Icons.call,
                    text: "+90 543 428 09 42",
                  ),
                  infoTile(
                    icons: Icons.location_pin,
                    text:
                        "Hürriyet mh. 1770 sk. \nMehmet Kurt apt. 9/8 \nYenişehir/Mersin",
                  ),
                ],
              ),
            ),
            //Second Section
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 50, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Sans(
                      text: "About Me", size: 35, fontWeight: FontWeight.bold),
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
              height: 60,
            ),
            //Third Section
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Sans(
                    text: "What I Do ?", size: 35, fontWeight: FontWeight.bold),
                AnimatedCardWeb(
                    imagePath: "assets/webL.png",
                    text: "Web development",
                    fit: BoxFit.contain,
                    reverse: true,
                    height: 200,
                    width: 300),
                SizedBox(
                  height: 35,
                ),
                AnimatedCardWeb(
                    height: 200,
                    width: 300,
                    fit: BoxFit.contain,
                    reverse: false,
                    imagePath: "assets/app.png",
                    text: "Mobile App Development"),
                SizedBox(
                  height: 35,
                ),
                AnimatedCardWeb(
                    fit: BoxFit.contain,
                    reverse: true,
                    height: 200,
                    width: 300,
                    imagePath: "assets/firebase.png",
                    text: "Back-end development"),
                SizedBox(
                  height: 60,
                ),
              ],
            )
            //Forth Section
            ,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Sans(
                    text: "Contact Me", size: 40, fontWeight: FontWeight.bold),
                Column(
                  children: [
                    TextForm(
                        width: wDevice / 1.4,
                        lineCount: 1,
                        header: "First Name",
                        hint: "Please Enter Your First Name"),
                    const SizedBox(
                      height: 25,
                    ),
                    TextForm(
                        header: "Email",
                        hint: "Enter your email",
                        lineCount: 1,
                        width: wDevice / 1.4),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextForm(
                        width: wDevice / 1.4,
                        lineCount: 1,
                        header: "Last Name",
                        hint: "Please Enter Your Last Name"),
                    const SizedBox(
                      height: 25,
                    ),
                    TextForm(
                      header: "Phone",
                      hint: "Enter Your Phone Number",
                      lineCount: 1,
                      width: wDevice / 1.4,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                TextForm(
                    header: "Message",
                    hint: "Enter your message",
                    lineCount: 10,
                    width: wDevice / 1.44),
                const SizedBox(
                  height: 25,
                ),
                MyElevatedButton(
                  height: 75,
                  width: 200,
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(25),
                  child: const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Sans(
                      text: "Submit",
                      size: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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

  ListTile infoTile({required IconData icons, required String text}) {
    return ListTile(
      leading: Icon(
        icons,
        size: 30,
      ),
      trailing: Icon(
        icons,
        size: 30,
      ),
      title: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.openSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
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
