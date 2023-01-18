import 'package:flutter/material.dart';

import '../Builders/header_builder.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(241, 240, 241, 244),
      ),
      body: Center(
        child: Column(
          children: [
            HeaderBuilder(),
            SizedBox(height: 20.0),
            Text(
              'Forgot your password?',
              style: TextStyle(color: Colors.black26),
            ),
            Text(
              'We will send you a link to reset it.',
              style: TextStyle(color: Colors.black26),
            ),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
