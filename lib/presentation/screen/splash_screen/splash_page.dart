import 'dart:async';

import 'package:crypto_tracker/presentation/screen/home_screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
 
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Timer(const Duration(seconds: 5), () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const HomePage())); });
    return Scaffold(
      
      body: Center(

        child:
         Padding(
           padding: const EdgeInsets.all(50.0),
           child: Lottie.asset('asset/json/crypto_splash_scrn.json'),
         ),
      ),
    );
  }
}