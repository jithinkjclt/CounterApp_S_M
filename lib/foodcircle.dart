import 'package:flutter/material.dart';

class FoodCircle extends StatelessWidget {
  const FoodCircle({super.key, required this.dish, required this.image});
final String dish;
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:110,

      color: Colors.white,
      margin:  const EdgeInsets.symmetric(horizontal: 4),
      child:  Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        CircleAvatar( radius: 40,foregroundImage: AssetImage(image),),
         Text(dish,style: const TextStyle(fontWeight: FontWeight.w500,color: Colors.black38),)

      ],),
    );
  }
}
