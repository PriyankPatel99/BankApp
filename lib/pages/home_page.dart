import 'package:bankapp/header/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _headerHeight = 530;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: _headerHeight,
          child: Header(
            _headerHeight,
          ),
        ),
        Column(
          children: [
            Center(
              child: SizedBox(
                height: 100,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: const Card(
                child: Center(
                    child: Icon(
                  Icons.keyboard_arrow_up,
                  size: 150,
                  color: Colors.deepPurple,
                )),
                elevation: 20,
                shadowColor: Colors.grey,
                margin: EdgeInsets.all(25),
              ),
            ),
            Text(
              "BankApp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 190,
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
                onPressed: () => Get.to(() => Login()),
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
              height: 30,
            ),
            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 15,
                        color: Colors.deepPurple)
                  ]),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  elevation: 20,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => Get.to(() => Login()),
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              textColor: const Color(0xFF000000),
              onPressed: () {
                // Perform some action
                print("need help");
              },
              child: const Text(
                'Need help?',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
