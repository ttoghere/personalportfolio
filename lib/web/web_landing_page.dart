// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:personalportfolio/web/widgets/widgets.dart';

class WebLandingPage extends StatefulWidget {
  const WebLandingPage({super.key});

  @override
  State<WebLandingPage> createState() => _WebLandingPageState();
}

class _WebLandingPageState extends State<WebLandingPage> {
  @override
  Widget build(BuildContext context) {
    var hDevice = MediaQuery.of(context).size.height;
    var wDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: _pageHeader(),
      body: _pageBody(hDevice: hDevice, wDevice: wDevice),
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

  ListView _pageBody({required double hDevice, required double wDevice}) {
    return ListView(
      children: [
        //First Section
        SizedBox(
          height: hDevice - 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  welcomeLabels(),
                ],
              ),
              profilePic(),
            ],
          ),
        ),
        //Second Section
        SizedBox(
          height: hDevice / 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/web.jpg",
                height: hDevice / 1.7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            ],
          ),
        ),
        //Third Section
        SizedBox(
          height: hDevice / 1.3,
          child: Column(
            children: [
              const Sans(
                  text: "What I Do?", size: 40, fontWeight: FontWeight.bold),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  widCard(
                      imagePath: "assets/app.png",
                      title: "Mobile App Development"),
                  widCard(
                      imagePath: "assets/webL.png", title: "Team Consultant"),
                  widCard(
                      imagePath: "assets/firebase.png",
                      title: "Back-end development")
                ],
              )
            ],
          ),
        ),
        //Forth Section
        SizedBox(
          height: hDevice,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Sans(
                  text: "Contact Me", size: 40, fontWeight: FontWeight.bold),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                          width: 350,
                          lineCount: 1,
                          header: "First Name",
                          hint: "Please Enter Your First Name"),
                      SizedBox(
                        height: 15,
                      ),
                      TextForm(
                          header: "Email",
                          hint: "Enter your email",
                          lineCount: 1,
                          width: 350),
                    ],
                  ),
                  Column(
                    children: [
                      TextForm(
                          width: 350,
                          lineCount: 1,
                          header: "Last Name",
                          hint: "Please Enter Your Last Name"),
                      SizedBox(
                        height: 15,
                      ),
                      TextForm(
                          header: "Phone",
                          hint: "Enter Your Phone Number",
                          lineCount: 1,
                          width: 350),
                    ],
                  ),
                ],
              ),
              TextForm(
                  header: "Message",
                  hint: "Enter your message",
                  lineCount: 10,
                  width: wDevice / 1.5),
              MyElevatedButton(
                height: 75,
                width: 200,
                onPressed: () {},
                borderRadius: BorderRadius.circular(15),
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
      ],
    );
  }

  Card widCard({required String imagePath, required String title}) {
    return Card(
      shadowColor: Colors.red[900],
      elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 10,
            ),
            Sans(
              text: title,
              size: 15,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
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

  Column welcomeLabels() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.red[900],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: const Sans(
            text: "Hello I'm",
            size: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Sans(
          text: "Ismail Tunç Kankılıç",
          size: 60,
          fontWeight: FontWeight.bold,
        ),
        const Sans(
            text: "Mobile App Developer",
            size: 30,
            fontWeight: FontWeight.normal),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            Icon(Icons.email),
            SizedBox(
              width: 15,
            ),
            Text("ismail.tunc.kankilic@gmail.com"),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.phone),
            SizedBox(
              width: 15,
            ),
            Text("+90 543 428 09 42"),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.gps_fixed),
            SizedBox(
              width: 15,
            ),
            Text(
                "Hürriyet Mh. 1770 sk. Mehmet Kurt Apt. No:9 D:8 Yenişehir/Mersin"),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.gps_fixed),
            SizedBox(
              width: 15,
            ),
            Text(
                "Dikilitaş Mh. Emirhan cd. Tuğrul sk. Haydarbey Apt. No:8 D:1 Beşiktaş/İstanbul"),
          ],
        ),
      ],
    );
  }

  CircleAvatar profilePic() {
    return CircleAvatar(
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
    );
  }

  Row appBarTitle() {
    return const Row(
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
    );
  }
}
