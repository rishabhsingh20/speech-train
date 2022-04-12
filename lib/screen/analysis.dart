import 'package:flutter/material.dart';

class AnalysisState extends StatefulWidget {
  const AnalysisState({Key? key}) : super(key: key);

  @override
  State<AnalysisState> createState() => Analysis();
}

class Analysis extends State<AnalysisState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pronunciation Analysis',
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
          top: true,
          right: true,
          child: Container(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 75),
                Center(
                  child: Text(
                    ' /haʊs/',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 139, 7, 7),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 25),
                Center(
                  child: Text(
                    'Overall Performance',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 40,
                  child: Stack(children: <Widget>[
                    Center(
                      child: Container(
                        width: 40,
                        height: 40,
                        child: new CircularProgressIndicator(
                          value: 0.65,
                          valueColor: AlwaysStoppedAnimation(Colors.green),
                          backgroundColor: Colors.grey,
                          semanticsLabel: 'Analysis',
                        ),
                      ),
                    ),
                    Center(
                        child: Text("65%",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ]),
                ),
                const SizedBox(height: 30),
                Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                ),
                Center(
                  child: Text(
                    'Advanced Analysis',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 139, 7, 7),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'hou',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Stack(children: <Widget>[
                    Center(
                      child: Container(
                        width: 40,
                        height: 40,
                        child: new CircularProgressIndicator(
                          value: 0.5,
                          valueColor: AlwaysStoppedAnimation(Colors.green),
                          backgroundColor: Colors.grey,
                          semanticsLabel: 'Analysis',
                        ),
                      ),
                    ),
                    Center(
                        child: Text("50%",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ]),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'se',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Stack(children: <Widget>[
                    Center(
                      child: Container(
                        width: 40,
                        height: 40,
                        child: new CircularProgressIndicator(
                          value: 0.7,
                          valueColor: AlwaysStoppedAnimation(Colors.green),
                          backgroundColor: Colors.grey,
                          semanticsLabel: 'Analysis',
                        ),
                      ),
                    ),
                    Center(
                        child: Text("70%",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ]),
                ),
                const SizedBox(height: 10),
                Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                              Color.fromARGB(158, 240, 221, 9), // background
                          onPrimary:
                              Color.fromARGB(255, 255, 101, 59), // foreground
                        ),
                        onPressed: () {},
                        child: Text(
                          'Listen To Expert',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        // shape: new RoundedRectangleBorder(
                        //     borderRadius: new BorderRadius.circular(45.0)),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                              Color.fromARGB(158, 58, 230, 155), // background
                          onPrimary:
                              Color.fromARGB(255, 70, 196, 32), // foreground
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Retry',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        // shape: new RoundedRectangleBorder(
                        //     borderRadius: new BorderRadius.circular(45.0)),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                              Color.fromARGB(158, 237, 233, 154), // background
                          onPrimary:
                              Color.fromARGB(255, 214, 226, 152), // foreground
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Go to Next Word',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        // shape: new RoundedRectangleBorder(
                        //     borderRadius: new BorderRadius.circular(45.0)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
