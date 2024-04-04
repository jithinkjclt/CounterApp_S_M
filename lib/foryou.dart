import 'package:flutter/material.dart';

class Foryou extends StatelessWidget {
  Foryou({
    Key? key, required this.rstrnt, required this.items, required this.time, required this.imageurl});
  final String rstrnt;
  final String items;
  final String time;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black38, width: .1),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 5, offset: Offset(2, -2))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        width: 190,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 80,
              height: double.infinity,
              color: Colors.white,
              child: Image.asset(fit: BoxFit.fill,imageurl),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rstrnt,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                Text(
                  items,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      Icons.timelapse_rounded,
                      color: Colors.green,
                      size: 15,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      time,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 9,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
