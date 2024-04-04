import 'package:flutter/material.dart';
import 'package:zomato/sizedbox.dart';

class Firsthalf extends StatelessWidget {
  const Firsthalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 384,
        height: 400,
        decoration: BoxDecoration(
            color: const Color(0xFFfef9f1),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            const Sbox(
              w: 35,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.redAccent,
                  size: 35,
                ),
                Container(
                  width: 260,
                  color: Colors.transparent,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "jithin",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                          )
                        ],
                      ),
                      Text("Hilite mall iringallor")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset: Offset(2, 0))
                        ]),
                    width: 35,
                    height: 35,
                    child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/Translator logo.jpg")),
                  ),
                ),
                const Text(
                  "J",
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
              ],
            ),
            const Sbox(w: 8),
            Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(13)),
              child: Row(
                children: [
                  const Sbox(w: 8),
                  const Icon(
                    Icons.search_rounded,
                    color: Colors.red,
                  ),
                  const Sbox(w: 13),
                  Container(
                    width: 258,
                    height: 45,
                    color: Colors.transparent,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "search",
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "I",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w100,
                          color: Colors.black26),
                    ),
                  ),
                  const Icon(
                    Icons.mic,
                    color: Colors.red,
                  ),
                  const Sbox(w: 13),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(50))),
              height: 200,
              child: const Image(
                image: AssetImage("assets/ZomatoGoldImage.jpg"),
              ),
            )
          ],
        ));
  }
}
