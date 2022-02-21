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
      Text('Cài đặt'),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Cài đặt chat',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Cài đặt Thông báo',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Cài đặt riêng tư',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Người dùng bị chặn',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Ngôn ngữ',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      Divider(
        color: Colors.grey,
        indent: 5.0,
      ),
      Text('Hỗ trợ'),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Trung tâm hỗ trợ',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Tiêu chuẩn cộng đồng',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Điều khoản',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      ListTile(
        title: TextButton(
          onPressed: () {},
          child: Text(
            'Giới thiệu',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    ]);
  }
}
