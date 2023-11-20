import 'package:flutter/material.dart';
import 'package:unit1/bmw_page.dart';
import 'package:unit1/bugatti.dart';
import 'package:unit1/chevrolet_page.dart';
import 'package:unit1/ferrari_page.dart';
import 'package:unit1/icon_page.dart';
import 'package:unit1/messi_page.dart';

import 'package:unit1/second_page.dart';

import 'package:unit1/splash_page.dart';

import 'home_page.dart';
import 'mustang_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var id;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id: (context) => SplashPage(),
        HomePage.id: (context) => HomePage(),
        SecondPage.id: (context) => SecondPage(),
        MessiPage.id: (context) => MessiPage(),
        FerraiPage.id: (context) => FerraiPage(),
        Bugatti.id: (context) => Bugatti(),
        ChevroletPage.id: (context) => ChevroletPage(),
        MustangPage.id: (context) => MustangPage(),
        IconPage.id: (context) => IconPage(),
        BmwPage.id: (context) => BmwPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
