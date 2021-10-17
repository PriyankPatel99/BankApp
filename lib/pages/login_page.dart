// ignore_for_file: sized_box_for_whitespace

import 'package:bankapp/header/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'card_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final double _headerHeight = 650;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Container(
          height: _headerHeight,
          child: Header(
            _headerHeight,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
          width: MediaQuery.of(context).size.width,
          height: 650,
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 130,
                  ),
                  const Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
          children: [
            Center(
              child: SizedBox(
                height: 110,
              ),
            ),
            Container(
              height: 150,
              width: 150,
              child: Card(
                child: Center(
                  child: Text(
                    "B",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 90,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                elevation: 20,
                shadowColor: Colors.grey,
                margin: EdgeInsets.all(25),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              child: Text(
                "Forgot PIN?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 15,
                      color: Colors.grey)
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  elevation: 20,
                  primary: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => Get.to(() => CardPage()),
                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            FlatButton(
              textColor: const Color(0xFF000000),
              onPressed: () {
                print("need help");
              },
              child: const Text(
                'Need help?',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        )
      ]),
    ));
  }
}
