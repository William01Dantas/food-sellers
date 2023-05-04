import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_sellers_app/src/data/global/global.dart';
import 'package:food_sellers_app/src/screens/authentication/auth_screen.dart';
import 'package:food_sellers_app/src/screens/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() {
    Timer(const Duration(seconds: 3), () async {
      if (firebaseAuth.currentUser != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => const HomeScreen()),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => const AuthScreen()),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/images/splash.jpg"),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Sell Food Online",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontFamily: "Signatra",
                    letterSpacing: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
