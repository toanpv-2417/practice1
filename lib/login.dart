import 'package:flutter/material.dart';
import 'signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
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
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
              ),
              Container(
                width: 200,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: const Text(
                    'Find and meet people around you to find Love',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter email',
                    fillColor: Colors.red,
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Password',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Checkbox(value: true, onChanged: null),
                    Text('Remember Password',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(55),
                        primary: Colors.white,
                        onPrimary: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(color: Colors.pink),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.yellow,
                        shape: const CircleBorder(),
                        fixedSize: Size(60, 60),
                      ),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.pink,
                        size: 28.0,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.yellow,
                          shape: const CircleBorder(),
                          fixedSize: const Size(60, 60),
                        ),
                        child: const Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.pink,
                          size: 28.0,
                        )),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text('FORGOT PASSWORD',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline))),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black.withOpacity(0.2),
              height: 60,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "DON'T HAVE ACCOUNT ?",
                  style: TextStyle(color: Colors.yellow),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ))
              ]),
            ))
      ],
    ));
  }
}
