import 'package:flutter/material.dart';
import 'package:ncl_academy_website/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:textfield_search/textfield_search.dart';
import 'package:get/get.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'dart:html' as html;
import '../main.dart';
import 'spring_beginner.dart';

class AdvancedPage extends StatefulWidget {
  const AdvancedPage({Key? key}) : super(key: key);

  @override
  State<AdvancedPage> createState() => _AdvancedState();
}

class _AdvancedState extends State<AdvancedPage> {
  var items = [" Vulnerabilities","log4shell", "Spring4shell"];
  String DDvalue = " Vulnerabilities";
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontFamily: "Catamaran"));
    const appBarColour = Color.fromARGB(255, 7, 31, 4);
    return Scaffold(
        backgroundColor: Color.fromRGBO(2, 81, 83, 1),
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
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(33, 15, 0, 15),
                child: ElevatedButton(
                    onPressed: () => Get.to(() => HomePage()),
                    style: ButtonStyle(
                        minimumSize:
                        MaterialStateProperty.all(const Size(130.0, 50.0)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(196, 196, 196, 1))),
                    child:
                    Text("Back", style: TextStyle(color: Colors.black)))),
            Center(
                child: Text("Advanced",
                    style: TextStyle(
                        color: Color.fromRGBO(245, 200, 82, 1),
                        fontSize: 40,
                        fontFamily: "Azonix"))),
            SizedBox(height: 66),
            Center(
                child: Container(
                    width: 1029,
                    height: 7,
                    color: Color.fromRGBO(245, 200, 82, 1))),
            Center(
              child: Container(
                width: 1029,
                height: 47,
                color: Color.fromRGBO(210, 233, 227, 1),
                padding: EdgeInsets.fromLTRB(19, 14, 0, 0),
                child: Text("Recommended",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 24,
                        color: Color.fromRGBO(1, 83, 85, 1),
                        fontWeight: FontWeight.w800)),
              ),
            ),
            Center(
              child: Container(
                width: 1029,
                height: 41,
                color: Color.fromRGBO(210, 233, 227, 1),
                padding: EdgeInsets.fromLTRB(40, 5, 15, 0),
                child: Text("Spring4Shell",
                    style: TextStyle(
                      fontFamily: "Catamaran",
                      fontSize: 20,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                width: 1029,
                height: 52,
                child: Container(
                    width: 1029, height:52,color: Color.fromRGBO(138, 227, 255, 1),
                    child: Row(children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          buttonPadding: EdgeInsets.fromLTRB(10,0,0,0),
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                          dropdownDecoration: BoxDecoration(color:Color.fromRGBO(210, 233, 227, 1), ),
                          value: DDvalue,
                          buttonWidth: 1029,
                          buttonHeight: 52,
                          icon:Icon(Icons.arrow_drop_down,
                                  color: Colors.black, size: 60),
                                 onChanged: (newValue) {
                            setState((){DDvalue = newValue as String;});
                            switch(DDvalue){
                              case "log4shell":
                                Get.to(() => HomePage());
                                break;
                              case "spring4shell":
                                Get.to(() => HomePage());
                                break;
                            }
                                 },
                          items: items.map((String items){
                            return DropdownMenuItem(value: items,child: Text(items));
                          }).toList(),
                        ),
                      )
                    ])),
              ),
            ),
          ]),
        ));
  }
}



void _launchNCLwebsiteURL() {
  String url = 'https://ncl.sg';
  html.window.open(url, '_blank');
}
