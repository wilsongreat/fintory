import 'package:fintory_app/data.dart';
import 'package:fintory_app/models/model.dart';
import 'package:fintory_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fintory UI',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Montserrat'),
      home: HomeScreen(),
    );
  }
}
