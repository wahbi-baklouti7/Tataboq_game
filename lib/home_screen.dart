import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Random _random = Random();
    int leftNumber = _random.nextInt(9);
    int rightNumber = _random.nextInt(9);

    String firstImage = "assets/images/image-1.png";
    String secondeImage = "assets/images/image-2.png";

    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        title: Text("Tataboq App"),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("حاول مرة أخرى",
              style: TextStyle(
                  fontFamily: "Almarai",
                  fontSize: 35,
                  color: Colors.grey[200])),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    child: Image.asset(
                      "assets/images/image-$rightNumber.png",
                    ),
                    onPressed: () {
                      setState(() {
                        rightNumber = rightNumber;
                      });
                    },
                  ),
                ),
                Expanded(
                    child: FlatButton(
                  child: Image.asset("assets/images/image-$leftNumber.png"),
                  onPressed: () {
                    setState(() {
                      leftNumber = leftNumber;
                    });
                  },
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
