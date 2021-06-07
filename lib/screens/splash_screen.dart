import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kuickmeat_vendor_app/screens/login_screen.dart';
import 'package:kuickmeat_vendor_app/screens/register_screen.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash-screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      FirebaseAuth.instance.authStateChanges().listen((User user) {
        if (user == null) {
          Navigator.pushReplacementNamed(
            context,
            LoginScreen.id,
          );
        } else {
          Navigator.pushReplacementNamed(
            context,
            HomeScreen.id,
          );
        }
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'logo',
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/beef.png',
                  height: 100,
                  width: 100,
                ),
                Text('Kuick Meat - Vendor App',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
