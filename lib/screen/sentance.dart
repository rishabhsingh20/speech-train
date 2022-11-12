import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/recorder.dart';
import 'package:record/record.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_application_1/screen/analysis.dart';

class Sentance extends StatefulWidget {
  const Sentance({Key? key}) : super(key: key);
  @override
  State<Sentance> createState() => Interface();
}

class Interface extends State<Sentance> {
  final record = SoundRecorder();
  @override
  void initState() {
    super.initState();

    record.init();
  }

  @override
  void dispose() {
    super.dispose();

    record.dispose();
  }

  Map data = {};
  bool isrecord = true;
  // final record = SoundRecorder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              'Learn English',
              textStyle: const TextStyle(
                  color: Color.fromARGB(255, 139, 7, 7),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          ],
          totalRepeatCount: 1,
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
                const SizedBox(height: 100),
                Center(
                  child: Text(
                    'House',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 100),
                Center(
                    child: IconButton(
                  icon: Image.asset('assets/images/mic.png'),
                  iconSize: 50,
                  onPressed: () async {
                    // abc
                    // await record.start(
                    //   path: 'aFullPath/myFile.m4a', // required
                    //   encoder: AudioEncoder.AAC, // by default
                    //   bitRate: 128000, // by default
                    //   samplingRate: 44100, // by default
                    // );
                  },
                )),
                Center(
                  // print(isrecord);
                  child: buildstart(),

                  // print(isrecord);
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(158, 63, 240, 9), // background
                      onPrimary: Colors.yellow, // foreground
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AnalysisState()),
                      );
                    },
                    child: Text(
                      'Submit',
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

  Widget buildstart() {
    final isRecording = record.isrecording;
    final IconData icon = isRecording ? Icons.stop : Icons.mic;
    final txt = isRecording ? 'STOP' : 'START';
    // final

    print(isrecord);
    // String txt = isrecord == true ? 'Stop' : "Stop";
    print(txt);
    return ElevatedButton.icon(
      onPressed: () async {
        final isRecording = await record.toggleRecording();
        setState(() {});
        // print(isrecord);
        // isrecord = isrecord == true ? false : true;
        // txt = isrecord == true ? 'Stop' : "Start";
        // print(isrecord);
      },
      icon: Icon(icon),
      label: Text(
        txt,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
      ),
    );
  }
}
