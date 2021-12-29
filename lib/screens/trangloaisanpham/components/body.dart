

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../constrants.dart';

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
      IconButton(onPressed: () {
              Navigator.pop(context);
            },
              icon: const Icon(Icons.arrow_left,
              color: Colors.black,
              ),
            ),
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
             padding: EdgeInsets.all(kDefaultPaddin/2),
               color: Colors.brown.shade100,   
            child: Column(                  
              children: <Widget> [
                Image.asset("assets/images/bag_2.png",
                width: 442,
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
                      minimumSize: Size(100, 40),
                      primary: Colors.black,
                      side: BorderSide(color: Colors.black),
                      )
                    ),
                    OutlinedButton(onPressed: () {},
                      child: Text("Lưu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                      minimumSize: Size(100, 40),
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
              padding: EdgeInsets.all(kDefaultPaddin/2),
               color: Colors.brown.shade100, 
              child: Column(                  
              children: <Widget> [
               
                Image.asset("assets/images/bag_1.png",
                width: 442,
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
                      minimumSize: Size(100, 40),
                      primary: Colors.black,
                      side: BorderSide(color: Colors.black),
                      )
                    ),
                    OutlinedButton(onPressed: () {},
                      child: Text("Lưu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                      minimumSize: Size(100, 40),
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
     
  