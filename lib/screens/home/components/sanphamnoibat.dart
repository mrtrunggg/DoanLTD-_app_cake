import 'package:flutter/material.dart';

import '../../../constrants.dart';

class sanPhamNoiBat extends StatelessWidget {
  const sanPhamNoiBat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     //onTap: press,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Container(
        width: 500,
        height:40,
        color: Colors.brown.shade100,
        child: Padding(            
          padding: EdgeInsets.only(top: kDefaultPaddin/2, left: kDefaultPaddin),
          child: Text("SẢN PHẨM NỔI BẬT",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
          ),
        ),      
      ),                    
        Row(
          children: <Widget> [
            Column(                  
              children: <Widget> [
                Image.asset("assets/images/bag_2.png",
                width: 200,
                height: 150,
                ),
                Text("Tên nè"),
                Text("Tiền nè"),
              ],                 
            ),
            Column(                  
              children: <Widget> [
                Image.asset("assets/images/bag_1.png",
                width: 200,
                height: 150,
                ),                  
                Text("Tên nè"),
                Text("Tiền nè"),
              ],                 
            )
          ],         
        ),






         




    ]
    )

    );
  }
}    