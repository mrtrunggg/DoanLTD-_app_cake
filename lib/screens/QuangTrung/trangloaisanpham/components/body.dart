


import 'package:app_cake/screens/QuangTrung/CTSP/manhinh_ctsp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constrants.dart';




class Bodyloaisanpham extends StatefulWidget {
  Bodyloaisanpham({Key? key}) : super(key: key);

  

  State<StatefulWidget> createState() => BodyloaisanphamState();
}

class BodyloaisanphamState extends State<Bodyloaisanpham>{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

SizedBox(height: kDefaultPaddin/2,),
Container(
  width: 500,
  height:40,
  color: Colors.brown.shade100,
  child: Row(
    children: <Widget>[     
      const Padding(            
          padding: EdgeInsets.only(left: kDefaultPaddin),
          child: Text("Bánh mì",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
          ),
        ),
          
    ],
  ),
),
        
// phần sản phẩm bên dưới nè
  SizedBox(height: kDefaultPaddin/2,),
    GestureDetector(
     //onTap: press,      
          
           
         child: Row(
          children: <Widget> [
            Container(
              width: 200,
             padding: EdgeInsets.all(kDefaultPaddin/2),
               color: Colors.brown.shade100,   
            child: Column(                  
              children: <Widget> [
                Image.asset("assets/images/bag_2.png",
                width: 150,
                height: 150,
                ),
                Text("Tên nè"),
                Text("Tiền nè"),               
                SizedBox(height:kDefaultPaddin/2),
                // nút bấm nè

                  
                 Row(                                
                  children: <Widget>[
                    OutlinedButton(onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const manhinhctsp()),
                      );
                    },
                      child: Text("Mua ngay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                      minimumSize: Size(50, 40),
                      primary: Colors.black,
                      side: BorderSide(color: Colors.black),
                      )
                    ),
                    SizedBox(width: kDefaultPaddin/2,),
                    OutlinedButton(onPressed: () {},
                      child: Text("Lưu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                      minimumSize: Size(75, 40),
                      primary: Colors.black,
                      side: BorderSide(color: Colors.black),
                      )
                    ),
                  ],
                ),

                
              ],                 
            ),
         
         ),
SizedBox(width: 4,),

            Container(
              
              width: 200,
              padding: EdgeInsets.all(kDefaultPaddin/2),
               color: Colors.brown.shade100, 
              child: Column(                  
              children: <Widget> [
               
                Image.asset("assets/images/bag_1.png",
                width: 150,
                height: 150,              
                ),                  
                Text("Tên nè"),
                Text("Tiền nè"),
                 SizedBox(height:kDefaultPaddin/2),
// nút bấm nè
             Row(                                
                  children: <Widget>[
                    OutlinedButton(onPressed: () {},
                      child: Text("Mua ngay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                      minimumSize: Size(50, 40),
                      primary: Colors.black,
                      side: BorderSide(color: Colors.black),
                      )
                    ),
                    SizedBox(width: kDefaultPaddin/2,),
                    OutlinedButton(onPressed: () {},
                      child: Text("Lưu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                      minimumSize: Size(75, 40),
                      primary: Colors.black,
                      side: BorderSide(color: Colors.black),
                      )
                    ),
                  ],
                ),


              ],                 
            ),
            )
            
          ],         
        ),






        

    )
    ]

    );   
  }
}
     
  