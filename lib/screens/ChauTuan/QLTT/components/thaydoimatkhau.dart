import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class matkhau extends StatefulWidget {
  matkhau({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _matkhauState();
}

class _matkhauState extends State<matkhau> {

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: (
        ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Nhập mật khẩu hiện tại',
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Nhập mật khẩu mới',
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Xác nhận mật khẩu mới',
                ),
              ),
            ),
            TextButton(
              onPressed: () {Navigator.pop(context);}, 
              child: Text('Xác nhận'))
          ],
        )
      ),
    );
  }
  

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.black,  
      elevation: 0,
      centerTitle: true,
  title: Text('Thay đổi mật khẩu'),
  leading: IconButton(
    onPressed: () {Navigator.pop(context);},
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