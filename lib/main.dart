import 'package:flutter/material.dart';
import 'package:practice/AlertWidget.dart';
import 'package:practice/AnimatedText.dart';
import 'package:practice/BottomNavigation.dart';
import 'package:practice/BottomSheetWidget.dart';
import 'package:practice/Drawer.dart';
import 'package:practice/DropDownWidget.dart';
import 'package:practice/Form.dart';
import 'package:practice/ImageWidget.dart';
import 'package:practice/Stack.dart';
import 'package:practice/dismissible.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.amber),
        home: StackWidget(),
    );
  }
}