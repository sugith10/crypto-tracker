import 'package:crypto_tracker/presentation/screen/home_screen/home_page.dart';
import 'package:crypto_tracker/presentation/screen/splash_screen/splash_page.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SplashPage(),
    );
  }
}