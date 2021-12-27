import 'package:app_cake/constrants.dart';

import 'package:app_cake/screens/CTSP/manhinh_ctsp.dart';
import 'package:app_cake/screens/KhacTrung/root_app.dart';
import 'package:app_cake/screens/home/home_screen.dart';
import 'package:app_cake/screens/timkiem/manhinh_timkiem.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,       
      ),


      //home: ScreenHome(),
      home: trangchinh(),
    );
  }
}