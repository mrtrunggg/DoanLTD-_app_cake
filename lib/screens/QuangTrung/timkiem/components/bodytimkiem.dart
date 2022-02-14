

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../../constrants.dart';


class Bodytimkiem extends StatefulWidget {
  Bodytimkiem({Key? key}) : super(key: key);

  

  State<StatefulWidget> createState() => BodytimkiemState();
}

class BodytimkiemState extends State<Bodytimkiem>{
  
  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        SizedBox(height: kDefaultPaddin/2,),    
        Row(
          children: <Widget>[
            IconButton(onPressed: () {
              Navigator.pop(context);
            },
              icon: const Icon(Icons.arrow_left,
              color: Colors.black,
              ),
            ),
            Expanded(child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Nhập tên sản phẩm cần tìm",
                hintText: "Bánh mì",
              ),
            ),
            ),
            IconButton(onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg",
            color: Colors.black,
            ),
      ),

          ],
        )
         
      ]
    );
  }
}
     
  