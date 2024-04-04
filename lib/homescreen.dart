import 'package:flutter/material.dart';
import 'package:zomato/bottambar.dart';
import 'package:zomato/datas.dart';
import 'package:zomato/first_half.dart';
import 'package:zomato/foodcircle.dart';
import 'package:zomato/foryou.dart';
import 'package:zomato/sizedbox.dart';
import 'package:zomato/text%20divider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Food food = Food();
  Food2 food2 = Food2();
  Data name = Data();
  Data2 name2 = Data2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white, boxShadow: [BoxShadow(color: Colors.black12)]),
        height: 55,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottamBar(image: "assets/WhatsApp Image 2024-02-18 at 19.26.32_3835a7e6.jpg"),
            BottamBar(image: "assets/History Icon.jp"),
            BottamBar(image: "assets/mone icon.jp"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Firsthalf(),
            const Sbox(w: 15),
            const Textfil(
              size: 146,
              text: """ FOR YOU""",
            ),
            const Sbox(w: 8),
            Container(
              width: 240,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black12)),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        color: Colors.white,
                        borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(10),
                        )),
                    width: 120,
                    height: 35,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 4),
                      child: Text(
                        "Recommended",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Sbox(w: 4),
                  const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.redAccent,
                    size: 16,
                  ),
                  const Sbox(w: 4),
                  const Text(
                    "favourite's",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            const Sbox(w: 20),
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: name2.details.length,
                itemBuilder: (BuildContext context, int index) {
                  return Foryou(
                    rstrnt: name2.details[index]["rstrnt"],
                    time: name2.details[index]["time"],
                    items: name2.details[index]["item"],
                    imageurl: name2.details[index]["imageurl"],
                  );
                },
              ),
            ),
            const Sbox(w: 10),
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: name.details.length,
                itemBuilder: (BuildContext context, int index) {
                  return Foryou(
                    rstrnt: name.details[index]["rstrnt"],
                    time: name.details[index]["time"],
                    items: name.details[index]["item"],
                    imageurl: name.details[index]["imageurl"],
                  );
                },
              ),
            ),
            const Sbox(w: 18),
            const Textfil(
              size: 140,
              text: 'EXPLORE',
            ),
            const Sbox(w: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 370,
                  height: 120,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                        ),
                      ],
                      border: Border.all(color: Colors.black12, width: .7),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Sbox(w: 18),
                      Container(
                        height: 120,
                        width: 200,
                        color: Colors.white,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Sbox(w: 15),
                            Text(
                              "Offers",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Sbox(w: 1),
                            Text("up to 60% OFF,flat Discounts,"),
                            Text(" and other great other offers"),
                          ],
                        ),
                      ),
                      const SizedBox(
                          width: 150,
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/offersPic.jpg"),
                          ))
                    ],
                  ),
                )
              ],
            ),
            const Sbox(w: 18),
            const Textfil(
              size: 92,
              text: """ WHAT'S ON YOUR MIND?""",
            ),
            const Sbox(w: 18),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: food.details.length,
                itemBuilder: (context, index) {
                  return FoodCircle(
                    dish: food.details[index]["dish"],
                    image: food.details[index]["image"],
                  );
                },
              ),
            ),
            const Sbox(w: 18),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: food.details.length,
                itemBuilder: (context, index) {
                  return FoodCircle(
                    dish: food2.details[index]["dish"],
                    image: food2.details[index]["image"],
                  );
                },
              ),
            ),
            const Sbox(w: 18),
            const Textfil(
              size: 110,
              text: "ALL RESTAURANTS",
            ),
            const Sbox(
              w: 18,
            )
          ],
        ),
      ),
    );
  }
}
