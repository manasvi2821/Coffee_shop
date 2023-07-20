import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Welcome,',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Create your account',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Email textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.brown.shade100,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // Password textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.brown.shade100,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Password'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 200),
              child: Text(
                'Forget Password?',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: (() => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return const HomePage();
                  })))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.brown.shade400,
                          offset: const Offset(2, 2),
                          blurRadius: 10,
                          spreadRadius: 0,
                        ),
                      ]),
                  child: const Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'or sign in with',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/facebook (2).png',
                            height: 30,
                            width: 30,

                            // color: Colors.white,
                          ),
                          // Text(
                          //   'Facebook',
                          //   style: TextStyle(color: Colors.black, fontSize: 20),
                          // ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/google.png',
                            height: 30,
                            width: 30,
                            // color: Colors.white,
                          ),
                          // Text(
                          //   'Google',
                          //   style: TextStyle(color: Colors.black, fontSize: 20),
                          // ),
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 210,
                alignment: Alignment.bottomCenter,
                child: Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_4mu3hoco.json',
                    frameRate: FrameRate(90)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
