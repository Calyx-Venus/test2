import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/Pages/forgotpass.dart';
import 'package:test2/Pages/landingpage.dart';

class login1 extends StatefulWidget {
  const login1({super.key});

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  final formKey = GlobalKey<FormState>(); //need this for validation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formKey, //need to wrap with form widget and add this for validation
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 180.0),
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
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field is Empty';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_rounded),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field is Empty';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.password_outlined),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    //ScaffoldMessenger.of(context).showSnackBar(
                    //SnackBar(
                    //content: Text('Processing..'),
                    Get.off(
                      LandingPage(),
                    );
                    
                  }
                },
                child: Text('Login', style: TextStyle(color: Colors.black87)),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white70),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(
                      ForgotPass(),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black26),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
