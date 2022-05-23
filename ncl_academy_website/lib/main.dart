import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NCL Academy',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome!', style: Theme.of(context).textTheme.headline2),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20));

    final beginnerCard = Container(
        constraints:
            const BoxConstraints(minWidth: 100, maxWidth: 200, minHeight: 250),
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Beginner', style: Theme.of(context).textTheme.headline6),
            ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(40),
                child: Image.network('images/pawn.jpg', fit: BoxFit.cover),
              ),
            ),
            const Text(
              'Suited for: Primary/Secondary students and senior citizens',
            ),
            const Text('Click to begin!')
          ],
        ));

    final intermediateCard = Container(
        constraints:
            const BoxConstraints(minWidth: 100, maxWidth: 200, minHeight: 250),
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Intermediate', style: Theme.of(context).textTheme.headline6),
            ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(40),
                child: Image.network('images/bishop.jpg', fit: BoxFit.cover),
              ),
            ),
            const Text(
              'Suited for: People with 2-3 years of experience with cybersecurity',
            ),
            const Text('Click to begin!')
          ],
        ));

    final advancedCard = Container(
        constraints:
            const BoxConstraints(minWidth: 100, maxWidth: 200, minHeight: 250),
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Advanced', style: Theme.of(context).textTheme.headline6),
            ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(40),
                child: Image.network('images/knight.jpg', fit: BoxFit.cover),
              ),
            ),
            const Text(
              'Suited for: Professionals and industry cybersecurity experts',
            ),
            const Text('Click to begin!')
          ],
        ));

    final firstColText = Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(80),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tackle the Latest Cyberthreat',
                style: Theme.of(context).textTheme.headline4),
            const Padding(padding: EdgeInsets.all(50)),
            const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
          ]),
    );

    final secondColText = Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(80),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Why NCLhub?', style: Theme.of(context).textTheme.headline4),
            const Padding(padding: EdgeInsets.all(50)),
            const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
          ]),
    );

    final thirdColText = Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(80),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What We Provide',
                style: Theme.of(context).textTheme.headline4),
            const Padding(padding: EdgeInsets.all(50)),
            const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
          ]),
    );

    final firstColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 100, 80, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          firstColText,
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child:
                    Image.network('images/cyberthreat.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );

    final secondColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.network('images/whyncl.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
          secondColText,
        ],
      ),
    );

    final thirdColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          thirdColText,
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.network('images/provide.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );

    final fourthColumn = Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(80),
      child: Center(
          child: Text('Pick a skill level and start learning today!',
              style: Theme.of(context).textTheme.headline4)),
    );

    final fifthColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[beginnerCard, intermediateCard, advancedCard],
      ),
    );

    final footer = Container(
      padding: const EdgeInsets.all(8.0),
      height: 70,
      color: const Color.fromARGB(255, 7, 31, 4),
      alignment: Alignment.center,
      child: const Text("Footer"),
    );

    const appBarColour = Color.fromARGB(255, 7, 31, 4);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: appBarColour,
        titleSpacing: 100.0,
        title: IconButton(
          iconSize: 70.0,
          onPressed: () {
            // route to homepage
          },
          icon: Image.asset(
            'images/NCL_LOGO.png',
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
                onPressed: () {},
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
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              firstColumn,
              secondColumn,
              thirdColumn,
              fourthColumn,
              fifthColumn,
              footer
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void _launchNCLwebsiteURL() {
  String url = 'https://ncl.sg';
  html.window.open(url, '_blank');
}
