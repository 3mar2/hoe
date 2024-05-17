import 'package:flutter/material.dart';
import 'package:hoe/home.dart';
// import 'package:hoe/home_controler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Home_page() ,
    );}}