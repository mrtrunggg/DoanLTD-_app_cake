import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ttcn extends StatefulWidget {
  ttcn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ttcnState();
}

class _ttcnState extends State<ttcn> {

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: (
        ListTile(
          leading: Icon(Icons.account_circle),
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Châu tuấn',
              hintText: 'Nhập tên',
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
  title: Text('Tên'),
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