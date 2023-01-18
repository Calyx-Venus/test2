import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderBuilder extends StatelessWidget {
  const HeaderBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/textsands.png', height: 70.0),
        ),
        Text(
          'Sugar and Spice',
          style: TextStyle(fontSize: 15.0, color: Colors.deepOrangeAccent),
        ),
        Text(
          'P o w e r e d  b y  A X Y S',
          style: TextStyle(color: Colors.black26, fontSize: 10.0),
        ),
      ],
    );
  }
}
