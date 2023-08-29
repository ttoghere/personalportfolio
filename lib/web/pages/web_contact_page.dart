import 'package:flutter/material.dart';
import 'package:personalportfolio/web/pages/web_landing_page.dart';
import 'package:personalportfolio/web/widgets/widgets.dart';

class WebContact extends StatefulWidget {
  static const routeName = "/contact";
  const WebContact({super.key});

  @override
  State<WebContact> createState() => _WebContactState();
}

class _WebContactState extends State<WebContact> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const AppDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 750,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: const Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(
                    title: "Hello",
                    route: "/",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Blog",
                    route: "/blog",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "About",
                    route: "/about",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Contact",
                    route: "/contact",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Works",
                    route: "/works",
                  ),
                  Spacer(),
                ],
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Sans(
                  text: "Contact Me", size: 40, fontWeight: FontWeight.bold),
              const SizedBox(
                height: 20,
              ),
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
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextForm(
                    header: "Message",
                    hint: "Enter your message",
                    lineCount: 10,
                    width: screenWidth / 1.515),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
