import 'package:flutter/material.dart';
import 'package:practice/CloneUIThree/InstaProfileClone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.amber),
        home: InstaProfile(),
    );
  }
}