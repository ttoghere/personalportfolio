import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../web/widgets/widgets.dart';
import 'widgets/mobile_tabs.dart';

class MobileContact extends StatefulWidget {
  static const routeName = "/contact";
  const MobileContact({super.key});

  @override
  State<MobileContact> createState() => _MobileContactState();
}

class _MobileContactState extends State<MobileContact> {
  @override
  Widget build(BuildContext context) {
    double wDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      endDrawer: mobileDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScroll) {
          return [
            SliverAppBar(
              expandedHeight: 400,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              iconTheme: IconThemeData(
                color: Colors.black,
                size: 35,
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Sans(
                  text: "Contact Me", size: 40, fontWeight: FontWeight.bold),
              const SizedBox(
                height: 15,
              ),
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
        ),
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
