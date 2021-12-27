import 'package:app_cake/screens/CTSP/components/bodyctsp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constrants.dart';



class manhinhctsp extends StatefulWidget {
  const manhinhctsp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => manhinhctspState();
}


class manhinhctspState extends State<manhinhctsp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: Bodyctsp(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.brown.shade100,
      
      elevation: 0,
      title:  const Text("Chi tiết sản phẩm",       
        style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        )       
      ),
    actions: <Widget>[
      IconButton(onPressed: () {},
        icon: const Icon(Icons.account_circle,
        color: kTextColor,
        ),
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
    );
  }

}