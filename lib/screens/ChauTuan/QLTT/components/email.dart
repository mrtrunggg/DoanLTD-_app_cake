import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class email extends StatefulWidget {
  email({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _emailState();
}

class _emailState extends State<email> {

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: (
        ListTile(
          leading: Icon(Icons.email),
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'abc@gmail.com',
              hintText: 'Nhập email',
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
  title: Text('Email'),
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