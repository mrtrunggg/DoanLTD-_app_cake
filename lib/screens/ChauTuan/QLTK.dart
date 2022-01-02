import 'package:app_cake/constrants.dart';
import 'package:app_cake/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_cake/screens/QuangTrung/home/components/body.dart';
import 'package:get/get.dart';


import '../../constrants.dart';
import 'components/body.dart';




class QLTK extends StatefulWidget {
  QLTK({Key? key}) : super(key: key);

  @override
  _QLTKState createState() => _QLTKState();
}

class _QLTKState extends State<QLTK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: body(),
     
    );
  }
  AppBar newMethod() {
    return AppBar(
      
      backgroundColor: Colors.brown.shade100,
      elevation: 0,
      centerTitle: true,
      title: Text('Tài khoản',style: TextStyle(fontSize: 28,color: Colors.black),),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back,color: Colors.black),
      ),
     
    );
  }
  
}
