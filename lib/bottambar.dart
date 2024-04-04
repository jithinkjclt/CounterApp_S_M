import 'package:flutter/material.dart';

class BottamBar extends StatelessWidget {
  const BottamBar({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 70,
      color: Colors.white,
      child:  Image(fit: BoxFit.cover, image: AssetImage(image)),
    );
  }
}
