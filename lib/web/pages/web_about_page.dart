// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:personalportfolio/web/pages/web_landing_page.dart';

import '../widgets/widgets.dart';

class WebAboutPage extends StatefulWidget {
  static const routeName = "/about";
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
    double wDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: Colors.white,
      appBar: _pageHeader(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Sans(
                    text: "About Me",
                    size: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                  const Sans(
                      text:
                          "Hello, I'm İsmail Tunç Kankılıç.\nI specialize in flutter development",
                      size: 20,
                      fontWeight: FontWeight.normal),
                  const Sans(
                      text:
                          "I stand out with my goal-oriented,\nhigh-performance and successful works.",
                      size: 20,
                      fontWeight: FontWeight.normal),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      skillTag(skill: "Flutter"),
                      skillTag(skill: "Ios"),
                      skillTag(skill: "Android"),
                      skillTag(skill: "Firebase"),
                      skillTag(skill: "Windows"),
                      skillTag(skill: "Mac")
                    ],
                  ),
                ],
              ),
              CircleAvatar(
                radius: 117,
                backgroundColor: Colors.red[900],
                child: const CircleAvatar(
                  radius: 110,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/ben.jpeg"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 100,
            child: Column(
              children: [
                Sans(text: "What I Do?", size: 40, fontWeight: FontWeight.bold),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedCardWeb(
                      height: 250,
                      width: 250,
                      fit: BoxFit.contain,
                      reverse: true,
                      imagePath: "assets/webL.png",
                      text: "Web App Development"),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Sans(
                          text: "Web App Development",
                          size: 30,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 15,
                      ),
                      Sans(
                          text: "First of all i'm here for Developing Web Apps",
                          size: 15,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedCardWeb(
                      height: 250,
                      width: 250,
                      fit: BoxFit.contain,
                      reverse: true,
                      imagePath: "assets/app.png",
                      text: "Mobile App Development"),
                  Column(
                    children: [
                      Sans(
                          text: "Mobile App Development",
                          size: 30,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 15,
                      ),
                      Sans(
                          text:
                              "Do you need a responsive,a high performance and a beautiful app?\nContact me...",
                          size: 15,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedCardWeb(
                      height: 250,
                      width: 250,
                      fit: BoxFit.contain,
                      reverse: true,
                      imagePath: "assets/firebase.png",
                      text: "Back-End Development"),
                  Column(
                    children: [
                      Sans(
                          text: "Mobile App Development",
                          size: 30,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 15,
                      ),
                      Sans(
                          text:
                              "Do you want your back-end to be highly scaleable and secure?\nLet's have a conversation on how i can help you with that...",
                          size: 15,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container skillTag({
    required String skill,
  }) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red[900]!,
            style: BorderStyle.solid,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Sans(text: skill, size: 15, fontWeight: FontWeight.bold),
    );
  }

  AppBar _pageHeader() {
    return AppBar(
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
      title: appBarTitle(),
    );
  }

  Row appBarTitle() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TabsWeb(
          title: "Hello",
          route: "/",
        ),
        TabsWeb(
          title: "Blog",
          route: "/blog",
        ),
        TabsWeb(
          title: "About",
          route: "/about",
        ),
        TabsWeb(
          title: "Contact",
          route: "/contact",
        ),
        TabsWeb(
          title: "Works",
          route: "/works",
        ),
        SizedBox(),
      ],
    );
  }
}
