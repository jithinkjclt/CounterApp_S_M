import 'package:flutter/material.dart';
import 'package:zomato/homescreen.dart';


void main() {
  runApp(const Zomato());
}

class Zomato extends StatelessWidget {
  const Zomato({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zomato",
      home: HomeScreen(),
    );
  }
}
