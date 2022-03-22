import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/sentance.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learn English',
          style: TextStyle(
              color: Color.fromARGB(255, 139, 7, 7),
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0),
        ),
        backgroundColor: Color.fromARGB(255, 103, 217, 179),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          bottom: true,
          left: true,
          top: false,
          right: true,
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100),
                Center(
                  child: Text(
                    'Choose if you want to practice words or sentances',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstRoute()),
                      );
                    },
                    child: Text(
                      'Practice Words',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(158, 26, 233, 222), // background
                      onPrimary: Colors.yellow, // foreground
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                    child: Text(
                      'Practice Sentences',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    // shape: new RoundedRectangleBorder(
                    //     borderRadius: new BorderRadius.circular(45.0)),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Word Arena'),
        ),
        body: Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Sentance()),
                      );
                      // Navigator.pop(context);
                      // Navigate back to first route when tapped.
                    },
                    child: const Text('Level 1'),
                  ),
                  ElevatedButton(
                    // Try running your application with "flutter run". You'll see the
                    // application has a blue toolbar. Then, without quitting the app, try
                    // changing the primarySwatch below to Colors.green and then invoke
                    // "hot reload" (press "r" in the console where you ran "flutter run",
                    // or simply save your changes t
                    onPressed: () {
                      // Navigator.pop(context);
                      // Navigate back StatelessWidget first route when tapped.
                    },
                    child: const Text('Level 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      // Navigate back to first route when tapped.
                    },
                    child: const Text('Level 3'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigate back to first route when tapped.
                    },
                    child: const Text('Let\'s Go Home!'),
                  ),
                ],
              )),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Sentence Arena'),
        ),
        body: Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      // Navigate back to first route when tapped.
                    },
                    child: const Text('Level 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      // Navigate back to first route when tapped.
                    },
                    child: const Text('Level 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      // Navigate back to first route when tapped.
                    },
                    child: const Text('Level 3'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigate back to first route when tapped.
                    },
                    child: const Text('Let\'s Go Home!'),
                  ),
                ],
              )),
        ));
  }
}
