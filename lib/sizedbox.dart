import 'package:flutter/cupertino.dart';

class Sbox extends StatelessWidget {
  const Sbox({super.key, required this.w});

  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: w,
      width: w,
    );
  }
}
