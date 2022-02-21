import 'package:app_cake/screens/ChauTuan/Caidat/caidat.dart';
import 'package:app_cake/screens/ChauTuan/Donhang/donhang.dart';
import 'package:app_cake/screens/ChauTuan/QLTT/QLTT.dart';
import 'package:app_cake/screens/KhacTrung/home_list_favorite.dart';
import 'package:app_cake/screens/KhacTrung/home_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constrants.dart';

class body extends StatefulWidget {
  body({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => QLTT(),
              ),
            );
          },
          child: Container(
            height: 40,
            color: Colors.grey.shade100,
            // ignore: prefer_const_constructors
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.account_circle, size: 30),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Thông tin cá nhân",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => trangyeuthich(),
              ),
            );
          },
          child: Container(
            height: 40,
            color: Colors.grey.shade100,
            // ignore: prefer_const_constructors
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.favorite_border, size: 30),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sản phẩm yêu thích",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Donhang(),
              ),
            );
          },
          child: Container(
            height: 40,
            color: Colors.grey.shade100,
            // ignore: prefer_const_constructors
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.local_shipping, size: 30),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Đơn hàng",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Caidat(),
              ),
            );
          },
          child: Container(
            height: 40,
            color: Colors.grey.shade100,
            // ignore: prefer_const_constructors
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.settings, size: 30),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Cài đặt",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 300,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => dangnhap(),
              ),
            );
          },
          child: Container(
            height: 60,
            // ignore: prefer_const_constructors
            color: Colors.black,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Đăng xuất",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 230,
                ),
                Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 35,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
