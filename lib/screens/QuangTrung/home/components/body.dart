
import 'package:app_cake/controllers/controllers.dart';
import 'package:app_cake/model/sanpham.dart';
import 'package:app_cake/screens/QuangTrung/home/components/banner.dart';
import 'package:app_cake/screens/QuangTrung/home/components/category.dart';
import 'package:app_cake/screens/QuangTrung/home/components/sanphambanchay.dart';
import 'package:app_cake/screens/QuangTrung/home/components/sanphammoi.dart';
import 'package:app_cake/screens/QuangTrung/home/components/sanphamnoibat.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../../../constrants.dart';



class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  

  State<StatefulWidget> createState() => BodyState();
}

class BodyState extends State<Body>{
  

@override
void initState() {
  super.initState();
  
}

  @override
  Widget build(BuildContext context) {



    return ListView(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        SizedBox(height: kDefaultPaddin/2,),
        //Day la banner
        banner(),      
        SizedBox(height: kDefaultPaddin/2,),
        // Day la Danh muc san pham
        category(),
        // Sản phẩm mới
        SizedBox(height: kDefaultPaddin/2,),
              
        SanPhamMoi(),
        SizedBox(height: kDefaultPaddin/2,),
        sanPhamNoiBat(),
        SizedBox(height: kDefaultPaddin/2,),
        sanPhamBanChay(),
        SizedBox(height: kDefaultPaddin/2,),


        /*Text('id ne: ${_controller.sanphamlist[0].userId}'),
        Text('id: ${_controller.sanphamlist[0].id}'),
        Text('title: ${_controller.sanphamlist[0].title}'),
        Text('body: ${_controller.sanphamlist[0].body}'),*/
        
      ]
    );
  }
}
     
  