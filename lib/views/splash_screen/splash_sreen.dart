import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../home/widgets/left_drawer.dart';
import '../home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void loadCounter() async {
    setState(() {
      // if the value is null , counter =  0
    });
  }

  @override
  void initState() {
    super.initState();
    //loadCounter();
    Timer(const Duration(seconds: 3), (() {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const MyHomePage(title: 'Norton Classroom');
      }));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // const Text(
              //   'Food Panda',
              //   style: TextStyle(
              //     fontSize: 32,
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/nu_logo.png',
                width: 340,
                height: 500,
              ),
              // Lottie.asset(
              //   'assets/lotties/panda.json',
              // ),
              const Text(
                "NORTON - CLASSROOM",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}

 