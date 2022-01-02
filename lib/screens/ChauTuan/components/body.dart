import 'package:app_cake/screens/ChauTuan/QLTT/QLTT.dart';
import 'package:app_cake/screens/KhacTrung/home_login.dart';
import 'package:flutter/material.dart';
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
        Container(
              padding: const EdgeInsets.only(left:0),
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (_) => QLTT(),),);
                },
                child: Container(
                  height: 60,
                  // ignore: prefer_const_constructors
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.account_circle,size: 50,),
                      SizedBox(width: 20,),
                      Container(
                        height: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Thông tin cá nhân", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: Colors.grey),
            Container(
              padding: const EdgeInsets.only(left:0),
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (_) => QLTT(),),);
                },
                child: Container(
                  height: 60,
                  // ignore: prefer_const_constructors
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.local_shipping,size: 50,),
                      SizedBox(width: 20,),
                      Container(
                        height: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Đơn hàng", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: Colors.grey),
            Container(
              padding: const EdgeInsets.only(left:0),
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (_) => QLTT(),),);
                },
                child: Container(
                  height: 60,
                  // ignore: prefer_const_constructors
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.settings,size: 50),
                      SizedBox(width: 20,),
                      Container(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            SizedBox(height: 10,),
                            Text("Cài đặt", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                          ],
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(color: Colors.grey),
            SizedBox(height: 300,),
            GestureDetector(
                    onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (_) => dangnhap(),),);
                  },
                  child: Container(
                    height: 60,
                    // ignore: prefer_const_constructors
                    color: Colors.black,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          
                          height: 50,
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              SizedBox(height: 10,),
                              Text("Đăng xuất", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.white),),
                            ],
                            
                          ),
                          
                        ),
                        SizedBox(width: 230,),
                        Icon(Icons.logout,color: Colors.white,size: 36,)
                      ],
                    ),
                  ),
                ),
              
      ],
    );
  }
}
