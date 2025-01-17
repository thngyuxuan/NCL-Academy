import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:ncl_academy_website/main.dart';
import 'dart:html' as html;

const headerColour = Color.fromARGB(255, 245, 200, 82);
const titleStyle = TextStyle(
  fontFamily: "Azonix",
  fontSize: 40,
  color: headerColour,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(4.0, 2.0),
      blurRadius: 5.0,
      color: Color.fromARGB(255, 82, 82, 82),
    ),
  ],
);

const headerStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: headerColour);

const questionTitleStyle = TextStyle(
    fontFamily: "Catamaran",
    height: 3,
    fontWeight: FontWeight.w700,
    color: Colors.white);

const questionBodyStyle =
    TextStyle(fontFamily: "Catamaran", height: 1.5, color: Colors.white);

final question1 = Column(
  children: const <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("What is NCLHub?", style: questionTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "We think NCLHub is an accessible way for you to learn about cybersecurity and how to defend yourselves against cyberthreats by providing information on the threats, and testbeds to simulate such attacks.",
          style: questionBodyStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "Are you just starting out on learning cybersecurity? Are you an industry professional looking for testbeds? NCLHub can help you!",
          style: questionBodyStyle),
    ),
  ],
);

final question2 = Column(
  children: const <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("How do I use NCLHub?", style: questionTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "Pick a skill level based on your experience with cybersecurity, and then select a topic that interests you. You can learn about cyberthreats, and how to set up and execute testbeds to simulate attacks through the videos provided and/or reading the descriptions provided, whichever works best for you!",
          style: questionBodyStyle),
    ),
  ],
);

final question3 = Column(
  children: const <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Who manages NCLHub?", style: questionTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "We are National Cybersecurity R&D Lab (NCL), and we provide computing resources, repeatable and controllable experimentation environments, as well as application services. Our goal in creating NCLHub is to allow people of all walks in life to learn cybersecurity.",
          style: questionBodyStyle),
    ),
  ],
);

final question4 = Column(
  children: const <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Why aren't the pages working?", style: questionTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "If you are experiencing persisting technical problems, please contact us using the info below, and explain to us what difficulties you are running into.",
          style: questionBodyStyle),
    ),
  ],
);

final question5 = Column(
  children: const <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Why isn't ___ topic available?", style: questionTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "If you have any cyberthreats you want NCLHub to cover, please email us with your suggestions. We work hard to provide accurate and comprehensive cybersecurity information, and this takes time and effort so we hope to have your patience and understanding.",
          style: questionBodyStyle),
    ),
  ],
);

final termsAndConditions = Column(
  children: const <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Terms and Conditions", style: questionTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("The terms and conditions of NCLHub can be found here.",
          style: questionBodyStyle),
    ),
  ],
);

var phoneDetails = RichText(
  text: const TextSpan(style: questionBodyStyle, children: <TextSpan>[
    TextSpan(
        text: 'Phone: ',
        style: TextStyle(fontWeight: FontWeight.bold, height: 2)),
    TextSpan(text: '+65 6601 1056', style: TextStyle(height: 2))
  ]),
);

var addressDetails = RichText(
  text: const TextSpan(style: questionBodyStyle, children: <TextSpan>[
    TextSpan(
        text: 'Address: ',
        style: TextStyle(fontWeight: FontWeight.bold, height: 2)),
    TextSpan(
        text: 'Innovation 4.0, 3 Research Link, NUS, Singapore 117602',
        style: TextStyle(height: 2))
  ]),
);

var emailDetails = RichText(
  text: const TextSpan(style: questionBodyStyle, children: <TextSpan>[
    TextSpan(
        text: 'Email: ',
        style: TextStyle(fontWeight: FontWeight.bold, height: 2)),
    TextSpan(text: 'support@ncl.sg', style: TextStyle(height: 2))
  ]),
);

final contactColumn = Container(
  alignment: Alignment.topLeft,
  padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
  child: Column(children: [
    Align(
      alignment: Alignment.centerLeft,
      child: phoneDetails,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: addressDetails,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: emailDetails,
    ),
  ]),
);

class HelpPage extends StatelessWidget {
  const HelpPage();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontFamily: "Catamaran"));
    const appBarColour = Color.fromARGB(255, 7, 31, 4);

    final titleColumn = Stack(children: [
      Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: const Text(
            "Help",
            style: titleStyle,
          )),
      Positioned(
        left: 40,
        bottom: 20,
        child: FloatingActionButton.extended(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            label: const Text("Back",
                style:
                    TextStyle(fontFamily: "Montserrat", color: Colors.black)),
            hoverElevation: 10,
            backgroundColor: const Color.fromARGB(255, 210, 233, 227),
            hoverColor: const Color.fromARGB(255, 244, 255, 252),
            extendedPadding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            onPressed: () => Get.back()),
      )
    ]);

    final faqHeader = Container(
        padding: const EdgeInsets.fromLTRB(220, 50, 50, 0),
        alignment: Alignment.centerLeft,
        child: const Text("FAQ", style: headerStyle));

    final contactUsHeader = Container(
        padding: const EdgeInsets.fromLTRB(220, 50, 50, 0),
        alignment: Alignment.centerLeft,
        child: const Text("Contact Us", style: headerStyle));

    final textColumn = Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
        child: Column(
          children: <Widget>[
            question1,
            question2,
            question3,
            question4,
            question5,
            termsAndConditions
          ],
        ));
    final footer = Container(
      padding: const EdgeInsets.all(8.0),
      height: 70,
      color: const Color.fromARGB(255, 7, 31, 4),
      alignment: Alignment.center,
      child: const Text("Sitemap"),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 81, 83),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: appBarColour,
        automaticallyImplyLeading: false,
        titleSpacing: 100.0,
        title: IconButton(
          iconSize: 70.0,
          onPressed: () {
            Get.toNamed('/');
          },
          icon: Image.asset(
            'img/NCL_LOGO.png',
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              TextButton(
                style: style,
                onPressed: _launchNCLwebsiteURL,
                child: const Text('NCL Website'),
              ),
              TextButton(
                style: style,
                onPressed: () {
                  Get.toNamed('/help');
                },
                child: const Text('Help'),
              ),
              const SizedBox(
                width: 100,
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              titleColumn,
              faqHeader,
              textColumn,
              // fourthColumn,
              contactUsHeader,
              contactColumn,
              footer
            ],
          ),
        ),
      ),
    );
  }
}

void _launchNCLwebsiteURL() {
  String url = 'https://ncl.sg';
  html.window.open(url, '_blank');
}
