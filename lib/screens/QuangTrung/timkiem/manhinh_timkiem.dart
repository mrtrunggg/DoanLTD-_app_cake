import 'package:app_cake/constrants.dart';
import 'package:app_cake/screens/QuangTrung/timkiem/components/bodytimkiem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class manhinhtiemkiem extends StatefulWidget {
  const manhinhtiemkiem({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => manhinhtiemkiemState();
}


class manhinhtiemkiemState extends State<manhinhtiemkiem>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: Bodytimkiem(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.brown.shade100,
      
      elevation: 0,
      title:  const Text("Trang tìm kiếm",       
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