

import 'package:app_cake/screens/QuangTrung/trangloaisanphamBK/manhinh_trangloaisanpham.dart';
import 'package:app_cake/screens/QuangTrung/trangloaisanphamBM/manhinh_trangloaisanpham.dart';
import 'package:app_cake/screens/QuangTrung/trangloaisanphamBMT/manhinh_trangloaisanpham.dart';
import 'package:app_cake/screens/QuangTrung/trangloaisanphamBN/manhinh_trangloaisanpham.dart';

import 'package:flutter/material.dart';


class category extends StatelessWidget {
  const category({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[           
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown.shade200)
          ),
          child: Text("Bánh ngọt",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
             context,
             MaterialPageRoute(
             builder: (_) => const manhinhloaisanphamBN(),),);
          }
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown.shade200)
          ),
          child: Text("Bánh mì",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
             context,
             MaterialPageRoute(
             builder: (_) => const manhinhloaisanphamBM(),),);
          }
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown.shade200)
          ),
          child: Text("Bánh mì mặn",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
             Navigator.push(
             context,
             MaterialPageRoute(
             builder: (_) => const manhinhloaisanphamBMT(),),);
          }
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown.shade200)
          ),
          child: Text("Bánh kem",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
             context,
             MaterialPageRoute(
             builder: (_) => const manhinhloaisanpham(),),);
          }
        ),          
      ],


    );
  }
}