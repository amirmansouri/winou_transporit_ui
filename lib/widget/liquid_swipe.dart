import 'package:flutter/material.dart';
import 'package:winou_transporit/home_page.dart';

final LiquidPages = [
  Container(
    color: Colors.blue,
    child: Center(
      child: Text(
        "slide 1 ",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  ),
  Container(
    color: Colors.green,
    child: Center(
      child: 
        Image.asset("assets/images/WINOUTRANSPORIT_logo.png")
      
    ),
  ),
  Container(
    color: Colors.green,
    child: Center(
      child: Text(
        "slide 3 ",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  ),
  Container(
    color: Colors.redAccent,
    child: Center(
      child: Text(
        "slide 4 ",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  ),
  Container(
    color: Colors.orange,
    child: Center(
      child: Text(
        "slide 5",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  ),
];
