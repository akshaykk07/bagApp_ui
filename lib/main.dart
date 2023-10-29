import 'package:bag_app/home.dart';
import 'package:bag_app/pages/Handbag.dart';
import 'package:bag_app/pages/Cat.dart';
import 'package:bag_app/pages/page1.dart';
import 'package:bag_app/pages/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
              .copyWith(background: Color(0xffe9ebea)),
        ),
        home: cat());
  }
}
