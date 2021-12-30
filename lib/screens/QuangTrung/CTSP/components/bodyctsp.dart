

import 'package:app_cake/screens/QuangTrung/CTSP/components/tenchitietsanpham.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../../constrants.dart';


class Bodyctsp extends StatefulWidget {
  Bodyctsp({Key? key}) : super(key: key);

  

  State<StatefulWidget> createState() => BodyctspState();
}

class BodyctspState extends State<Bodyctsp>{
  
  @override
  Widget build(BuildContext context) {
    return Column(
     // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [     
        SizedBox(height: kDefaultPaddin/2,),    
        tenchitietsanpham(),
        Image.asset("assets/images/bag_1.png"),
            
        
         
          Text("Tên sản phẩm: Bánh mì",
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20
            ),      
          ),
        SizedBox(height: kDefaultPaddin/2,),      
    
          Text("Giá tiền: 2.500đ",
          style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20),
          ),
         
        SizedBox(height: kDefaultPaddin,),

        OutlinedButton(onPressed: () {},
        child: Text("Thanh toán"),
        style: OutlinedButton.styleFrom(
          minimumSize: Size(300, 40),
          primary: Colors.black,
          side: BorderSide(color: Colors.black),
        )
        ),
        
        SizedBox(height: kDefaultPaddin/2,), 

        OutlinedButton(onPressed: () {},
        child: Text("Thêm vào giỏ hàng"),
        style: OutlinedButton.styleFrom(
           minimumSize: Size(300, 40),
          backgroundColor: Colors.black,
          primary: Colors.white,
          side: BorderSide(color: Colors.black),
        )
        ),

      ]
    );
  }
}


     
  