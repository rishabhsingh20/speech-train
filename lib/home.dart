import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  var a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learn English',
          style: TextStyle(
              color: Colors.red[200],
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          bottom: true,
          left: true,
          top: false,
          right: true,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 150, 10, 10),
              child: Column(
                children: <Widget>[
                  Center(
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.edit_location,
                        color: Colors.red,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstRoute()),
                        );
                      },

                      label: Text(
                        'Words',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      //   shape: new RoundedRectangleBorder(
                      //       borderRadius: new BorderRadius.circular(45.0)),
                    ),
                  ),
                  Center(
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.edit_location,
                        color: Colors.red,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute()),
                        );
                      },
                      label: Text(
                        'Sentences',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      // shape: new RoundedRectangleBorder(
                      //     borderRadius: new BorderRadius.circular(45.0)),
                    ),
                  ),
                  Center(
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.edit_location,
                        color: Colors.red,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyStatefulWidget()),
                        );
                      },
                      label: Text(
                        'sign-in/sign-up',
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

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => Sign();
}

class Sign extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Learn English',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            )),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Sign in',
              style: TextStyle(fontSize: 20),
            )),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Name',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            //forgot password screen
          },
          child: const Text(
            'Forgot Password',
          ),
        ),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
                Navigator.pop(context);
              },
            )),
        Row(
          children: <Widget>[
            const Text('Does not have account?'),
            TextButton(
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                //signup screen
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    ));
  }
}
