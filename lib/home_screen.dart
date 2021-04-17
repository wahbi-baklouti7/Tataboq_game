import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int leftNumber = 2;
    int rightNumber = 5;

    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        title: Text("Picture Match"),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text((leftNumber == rightNumber) ? "You Win" : "Try Again",
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
                        leftNumber = Random().nextInt(8) + 1;
                        rightNumber = Random().nextInt(8) + 1;
                      });
                    },
                  ),
                ),
                Expanded(
                    child: FlatButton(
                  child: Image.asset("assets/images/image-$leftNumber.png"),
                  onPressed: () {
                    setState(() {
                      rightNumber = Random().nextInt(8) + 1;
                      leftNumber = Random().nextInt(8) + 1;
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
