import 'package:app_cake/screens/ChauTuan/components/QuanlithongtinComponent/email.dart';
import 'package:app_cake/screens/ChauTuan/components/QuanlithongtinComponent/sdt.dart';
import 'package:app_cake/screens/ChauTuan/components/QuanlithongtinComponent/thaydoimatkhau.dart';
import 'package:app_cake/screens/ChauTuan/components/QuanlithongtinComponent/thongtincanhan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class body extends StatefulWidget {
  body({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
          color: Colors.amber.shade50,
          width: double.infinity,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/userlogin.svg',
                width: 100,
                height: 100,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Cập nhật ảnh',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              // Image.asset('assets/icons/userlogin.svg'),
            ],
          )),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ttcn()));
          },
          child: Text(
            'Châu Tuấn',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.email),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => email()));
          },
          child: Text(
            'abc@gmail.com',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.phone_iphone),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => sdt()));
          },
          child: Text(
            '0303234567',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      Divider(
        color: Colors.grey,
        indent: 5.0,
      ),
      ListTile(
        leading: Icon(Icons.vpn_key),
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => matkhau()));
          },
          child: Text(
            'Thay đổi mật khẩu',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    ]);
  }
}
