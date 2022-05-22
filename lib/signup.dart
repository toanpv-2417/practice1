import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 120),
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.orange,
          Colors.pink,
        ],
      )),
      child: Column(children: [
        Image.asset(
          'assets/images/logo.png',
          width: 200,
        ),
        Container(
          width: 200,
          margin: const EdgeInsets.only(bottom: 50),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: const Text('Find and meet people around you to find Love',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  primary: Colors.white,
                  onPrimary: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
              child: Row(
                children: [
                  const Icon(
                    Icons.facebook,
                    color: Colors.pink,
                    size: 28.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 1,
                    height: 20,
                    color: Colors.pink,
                  ),
                  const Text(
                    'Sign in with Facebook',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  primary: Colors.white,
                  onPrimary: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
              child: Row(
                children: [
                  const Icon(
                    Icons.camera,
                    color: Colors.pink,
                    size: 28.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 1,
                    height: 20,
                    color: Colors.pink,
                  ),
                  const Text(
                    'Sign in with WhatApp',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  primary: Colors.white,
                  onPrimary: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.pink),
              )),
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('ALREADY SIGN IN',
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline)))
      ]),
    ));
  }
}
