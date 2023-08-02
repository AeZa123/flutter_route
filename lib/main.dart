import 'package:flutter/material.dart';
import 'package:routing_flutter/about.dart';
import 'package:routing_flutter/contact.dart';
import 'package:routing_flutter/home.dart';
import 'package:routing_flutter/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.indigo,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        // useMaterial3: true,
      ),
      title: 'Flutter Routing',
      // theme: ThemeData(
      //   // primarySwatch: Colors.indigo,
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      // ),
      // home: const Home(),
      initialRoute: '/',
      routes: {
        '/' : (context) => Home(),
        '/setting' : (context) => Setting(),
        '/about' : (context) => About(),
        '/contact' : (context) => Contact(),
      },
    );
  }
}

