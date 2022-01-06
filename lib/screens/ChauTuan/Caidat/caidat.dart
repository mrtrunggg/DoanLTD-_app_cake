import 'package:app_cake/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'components/body.dart';


class Caidat extends StatefulWidget {
  Caidat({Key? key}) : super(key: key);

  @override
  _CaidatState createState() => _CaidatState();
}

class _CaidatState extends State<Caidat> {
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
      title: Text('Cài đặt'),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
     
    );
  }
}
