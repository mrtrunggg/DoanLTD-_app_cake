import 'package:app_cake/constrants.dart';
import 'package:app_cake/screens/ChauTuan/components/DonhangComponent/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Donhang extends StatefulWidget {
  Donhang({Key? key}) : super(key: key);

  @override
  _DonhangState createState() => _DonhangState();
}

class _DonhangState extends State<Donhang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: body(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.brown.shade100,
      elevation: 0,
      centerTitle: true,
      title: Text('Đơn hàng'),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
    );
  }
}
