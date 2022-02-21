import 'package:app_cake/screens/ChauTuan/components/DonhangComponent/Dagiao.dart';
import 'package:app_cake/screens/ChauTuan/components/DonhangComponent/Dahuy.dart';
import 'package:app_cake/screens/ChauTuan/components/DonhangComponent/Danggiao.dart';
import 'package:app_cake/screens/ChauTuan/components/DonhangComponent/Daxuly.dart';
import 'package:app_cake/screens/ChauTuan/components/DonhangComponent/Moidat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_cake/screens/ChauTuan/Donhang/constrant.dart';

class body extends StatefulWidget {
  body({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ListTile(
        leading: Icon(Icons.add_task),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dadat()));
          },
          child: Text(
            'Đơn đã đặt',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.playlist_add_check),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Daxuly()));
          },
          child: Text(
            'Đơn xử lý',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.two_wheeler),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Danggiao()));
          },
          child: Text(
            'Đơn đang giao',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.task_alt),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dagiao()));
          },
          child: Text(
            'Đơn đã giao',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.highlight_off),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dahuy()));
          },
          child: Text(
            'Đơn đã huỷ',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    ]);
  }
}
