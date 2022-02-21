import 'package:app_cake/constrants.dart';
import 'package:app_cake/screens/ChauTuan/components/QuanlithongtinComponent/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class QLTT extends StatefulWidget {
  QLTT({Key? key}) : super(key: key);

  @override
  _QLTTState createState() => _QLTTState();
}

class _QLTTState extends State<QLTT> {
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
      title: Text('Thông tin cá nhân'),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.check),
        ),
      ],
    );
  }
}
