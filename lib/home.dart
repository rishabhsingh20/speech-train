import 'package:flutter/material.dart';
import 'package:flutter_application_1/levels.dart';
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
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/levels.jpg'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // backgroundColor: Color.fromARGB(255, 2, 17, 87),
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
                        //   child: Text(
                        //     'Choose if you want to practice words or sentances',
                        //     style: TextStyle(
                        //         fontSize: 25,
                        //         color: Color.fromARGB(255, 245, 242, 242)),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // ),
                        child: Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'Learn English',
                          style: TextStyle(
                            fontSize: 40,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.blue[700]!,
                          ),
                        ),
                        // Solid text as fill.
                        Text(
                          'Learn English!',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    )),
                    SizedBox(height: 100),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color.fromARGB(158, 77, 233, 5), // background
                          foregroundColor: Colors.yellow, // foreground
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          minimumSize: Size(250, 45),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GameMode(
                                      mode: "Word",
                                    )),
                          );
                        },
                        child: Text(
                          'Practice Words',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color.fromARGB(255, 250, 248, 248)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color.fromARGB(158, 77, 233, 5), // background
                          foregroundColor: Colors.yellow, // foreground
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          minimumSize: Size(250, 45),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GameMode(
                                      mode: "Sentance",
                                    )),
                          );
                        },
                        child: Text(
                          'Practice Sentences',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color.fromARGB(255, 248, 247, 247)),
                        ),
                        // shape: new RoundedRectangleBorder(
                        //     borderRadius: new BorderRadius.circular(45.0)),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/levels.jpg'), fit: BoxFit.cover),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text('Welcome to Word Arena'),
            ),
            body: Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
            )));
  }
}

class GameMode extends StatelessWidget {
  const GameMode({Key? key, required this.mode}) : super(key: key);
  final String mode;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/levels.jpg'), fit: BoxFit.cover),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('Welcome to $mode Arena'),
            ),
            body: Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: const <Widget>[
                      Level(level: 1),
                      Level(level: 2),
                      Level(level: 3),
                      Level(level: 4),
                      Level(level: 5),
                      Level(level: 6),
                    ],
                  )),
            )));
  }
}
