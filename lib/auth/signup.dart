// This page is for the purpose of Sign-in or log-in

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => SignUP();
}

class SignUP extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: const Text(
              'Create Account',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            )),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
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
              labelText: 'Enter Password',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: confirmPasswordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm Password',
            ),
          ),
        ),
        Container(
            height: 70,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: ElevatedButton(
              child: const Text('Sign up'),
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
                print(confirmPasswordController.text);
                Navigator.pop(context);
              },
            )),
        Row(
          children: <Widget>[
            const Text('Already have an account?'),
            TextButton(
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                //signup screen
                Navigator.pop(context);
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    ));
  }
}
