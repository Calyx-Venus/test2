import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/Pages/login.dart';

//copy app project
void main() { //async
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(
    GetMaterialApp(debugShowCheckedModeBanner: false, home: login1()),
  );
}
