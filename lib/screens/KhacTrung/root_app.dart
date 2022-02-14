import 'package:app_cake/screens/KhacTrung/constrant.dart';
import 'package:app_cake/screens/KhacTrung/home_notification.dart';
import 'package:app_cake/screens/KhacTrung/home_search.dart';
import 'package:app_cake/screens/QuangTrung/home/home_screen.dart';
import 'package:app_cake/screens/QuangTrung/timkiem/manhinh_timkiem.dart';
import 'package:flutter/material.dart';

import 'home_cart.dart';

// ignore: camel_case_types
class trangchinh  extends StatefulWidget {
  const trangchinh ({ Key? key }) : super(key: key);

  @override
  _trangchinh createState() => _trangchinh();
}

// ignore: camel_case_types
class _trangchinh extends State<trangchinh > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: footer(),
    appBar: getAppBar(),
    body: getBody(),
    );
  }
int activeTab = 0;
AppBar ? appbar;
  getBody() {
    return IndexedStack(
      index: activeTab,
      children: const [       
        ScreenHome(),
        manhinhtiemkiem(),
        thongbao(),
        cart(),
      ],
    );
  }

  getAppBar() {
    switch (activeTab) {
      case 0:
        appbar = null;
        break;
      case 1:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title:const Text(
            "TÌM KIẾM",
            style: TextStyle(color: Colors.black),
          ),
        );
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title:const Text(
            "THÔNG BÁO",
            style: TextStyle(color: Colors.black),
          ),
        );
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title:const Text(
            "GIỎ HÀNG",
            style: TextStyle(color: Colors.black),
          ),

        );
      default:
    }
  }
  footer() {
    return Container(
     height: 70,
      decoration: BoxDecoration(color: Colors.white , border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))),
      padding: const EdgeInsets.only(left: 15, right:15,top:6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(itemsTab.length, (index){
          return IconButton(onPressed: () {
            setState(() {
              activeTab = index;
            });
           }, 
          icon: Icon(itemsTab[index]['icon'], size: itemsTab[index]['size']),
          
          );
        }),
      )
    );
  }
}


