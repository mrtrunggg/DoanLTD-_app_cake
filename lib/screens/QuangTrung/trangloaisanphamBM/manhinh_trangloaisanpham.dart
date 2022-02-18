import 'package:app_cake/constrants.dart';

import 'package:app_cake/screens/QuangTrung/trangloaisanphamBK/components/body.dart';
import 'package:app_cake/screens/QuangTrung/trangloaisanphamBM/components/body.dart';
import 'package:app_cake/screens/QuangTrung/trangloaisanphamBMT/components/body.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class manhinhloaisanphamBM extends StatefulWidget {
  const manhinhloaisanphamBM({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => manhinhloaisanphamBMState();
}


class manhinhloaisanphamBMState extends State<manhinhloaisanphamBM>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: BodyloaisanphamBM(),
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