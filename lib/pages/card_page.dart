import 'dart:ui';

import 'package:bankapp/header/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _headerHeight = 540;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: _headerHeight,
            child: Header(
              _headerHeight,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 90, left: 30, right: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back_ios,
                            size: 20, color: Colors.white)),
                    Expanded(child: Container()),
                    Text(
                      "My Cards",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios,
                        size: 20, color: Colors.white),
                  ],
                )
              ],
            ),
          ),
          MasterCard(context),
          NaveTool(context),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget MasterCard(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 180),
        child: Center(
          child: Container(
            height: 220,
            width: 340,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.grey, Colors.white],
                  center: Alignment(0.6, 0.3),
                  focal: Alignment(0.3, -0.1),
                  focalRadius: 1.0,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: Text(
                          "GLOBAL",
                          style:
                              TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      SizedBox(
                        child: SvgPicture.asset(
                          "assets/sbi.svg",
                          width: 70,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 40),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            gradient: RadialGradient(
                              colors: [Colors.white, Color(0xFFFFD700)],
                              center: Alignment(0.0, 0),
                              focalRadius: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      SizedBox(
                        child: SvgPicture.asset(
                          "assets/wifi.svg",
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 105, left: 55),
                  child: Text(
                    "7685   6457   8368   0364   ",
                    style: TextStyle(
                        fontSize: 23, color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 127, left: 56),
                  child: Text(
                    "1234",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7), fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 160, left: 150),
                  child: Row(
                    children: [
                      Text(
                        "VALID \n THRU",
                        style: TextStyle(
                            fontSize: 7,
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "  06/45",
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.7)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 190, left: 70),
                  child: Text(
                    "PRIYANK PATEL",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 170, left: 240),
                  child: SvgPicture.asset(
                    "assets/visa.svg",
                    width: 80,
                    color: Colors.deepPurple,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 199, left: 270),
                  child: Text(
                    "Platinum",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Widget NaveTool(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 450),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(width: 3, color: Colors.white),
                      ),
                      child: SvgPicture.asset(
                        "assets/down.svg",
                        color: Colors.white,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Request",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.deepPurple.shade300,
                    Colors.deepPurple.shade900
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 100,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(width: 3, color: Colors.deepPurple),
                      ),
                      child: SvgPicture.asset(
                        "assets/up.svg",
                        color: Colors.deepPurple,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Send", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 0.0),
                    blurRadius: 15,
                    color: Colors.deepPurple)
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 100,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/chat.svg",
                      color: Colors.white,
                      width: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Statistics",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.deepPurple.shade300,
                    Colors.deepPurple.shade900
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 140,
          width: 330,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 0.0),
                    blurRadius: 15,
                    color: Colors.white)
              ],
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                Colors.deepPurple.shade300,
                Colors.deepPurple.shade900
              ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                child: Text(
                  "Refer a friend \n & earn bonus!",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 90,
              ),
              SizedBox(
                child: SvgPicture.asset(
                  "assets/dollar.svg",
                  color: Colors.white,
                  width: 100,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
