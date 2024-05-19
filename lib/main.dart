import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycart/MyCart.dart';
import 'package:mycart/map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      
      home: location()
    );
  }
}

