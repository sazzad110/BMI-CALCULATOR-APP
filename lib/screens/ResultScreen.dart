import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final dynamic data; // dynamic mean that can hold value of any type
  ResultScreen(this.data);
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Color bgColor = Color(0xff171830);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: bgColor,
          alignment: Alignment.center,
          child: Text(
            "Your are ${widget.data}",
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 34,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
