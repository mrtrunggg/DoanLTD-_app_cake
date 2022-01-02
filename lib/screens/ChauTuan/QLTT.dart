import 'package:app_cake/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_cake/screens/QuangTrung/home/components/body.dart';
import 'package:get/get.dart';

import 'components/body.dart';
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
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      title: Text('Thông tin cá nhân'),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.check,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
  }
}
