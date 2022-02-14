
import 'package:app_cake/screens/ChauTuan/QLTK.dart';
import 'package:app_cake/screens/QuangTrung/home/components/body.dart';
import 'package:app_cake/screens/QuangTrung/timkiem/manhinh_timkiem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constrants.dart';




class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ScreenHomeState();
}


class ScreenHomeState extends State<ScreenHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: Body(),
      
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.brown.shade100,
      
      elevation: 0,
      title: Text("Trang Chủ",       
        style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        )       
      ),
    actions: <Widget>[
      IconButton(onPressed: () {
       Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => manhinhtiemkiem()),
        );
      },
        icon: SvgPicture.asset("assets/icons/search.svg",
          color: kTextColor,
        ),
      ),
      IconButton(onPressed: () {
        Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => QLTK()),
        );
      },
        icon: const Icon(Icons.account_circle,
        color: kTextColor,
        ),

        ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
    );
  }
}

