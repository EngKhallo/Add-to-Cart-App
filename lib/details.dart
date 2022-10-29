import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cart extends StatelessWidget {
  Cart(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  final String name, image;
  var price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Column(children: [
        SizedBox(height: 40),
        Text(name, style: TextStyle(fontSize: 50),),
      ]),
      )
    );
  }
}
