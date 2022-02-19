
import 'package:app_cake/constrants.dart';

import 'package:app_cake/screens/QuangTrung/trangloaisanphamBK/components/body.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class manhinhloaisanpham extends StatefulWidget {
  const manhinhloaisanpham({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => manhinhloaisanphamState();
}


class manhinhloaisanphamState extends State<manhinhloaisanpham>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: Bodyloaisanpham(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.brown.shade100,
      
      elevation: 0,
      title:  const Text("Trang loại sản phẩm",       
        style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        )       
      ),
    actions: <Widget>[
      IconButton(onPressed: () {},
        icon: const Icon(Icons.account_circle,
        color: kTextColor,
        ),
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
    );
  }

}