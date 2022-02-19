
import 'package:app_cake/constrants.dart';
import 'package:app_cake/providers/sanphamprovider.dart';

import 'package:app_cake/screens/KhacTrung/home_login.dart';
import 'package:app_cake/screens/KhacTrung/root_app.dart';
import 'package:app_cake/screens/QuangTrung/home/components/body.dart';
import 'package:app_cake/screens/QuangTrung/trangloaisanphamBK/manhinh_trangloaisanpham.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>SanphamProvider(),)
      ],
      
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,       
        ),
    
    
        //home: ScreenHome(),
        //home: trangchinh(),
        //home: manhinhloaisanpham()
        home: dangnhap(),
      ),
    );
  }
}
