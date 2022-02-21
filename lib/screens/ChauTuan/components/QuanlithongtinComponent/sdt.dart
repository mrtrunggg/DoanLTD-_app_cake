import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class sdt extends StatefulWidget {
  sdt({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _sdtState();
}

class _sdtState extends State<sdt> {

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: (
        ListTile(
          leading: Icon(Icons.phone_iphone),
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: '0303234567',
              hintText: 'Nhập số điện thoại',
            ),
          )
      )
    ),
    ); 
  }
  

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.black,  
      elevation: 0,
      centerTitle: true,
  title: Text('Số điện thoại'),
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