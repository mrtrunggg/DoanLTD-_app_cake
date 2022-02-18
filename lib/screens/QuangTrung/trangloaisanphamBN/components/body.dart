


import 'package:app_cake/screens/QuangTrung/CTSP/manhinh_ctsp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constrants.dart';

import 'dmspbn.dart';




class BodyloaisanphamBN extends StatefulWidget {
  BodyloaisanphamBN({Key? key}) : super(key: key);

  

  State<StatefulWidget> createState() => BodyloaisanphamBNState();
}

class BodyloaisanphamBNState extends State<BodyloaisanphamBN>{
  
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
          child: Text("Bánh kem",
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
 

   sanphamdanhmucbn(),





    ]
    
    );   
    
  }
}

