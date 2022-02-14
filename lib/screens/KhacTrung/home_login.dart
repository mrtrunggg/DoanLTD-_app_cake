
import 'package:app_cake/screens/KhacTrung/home_pay.dart';
import 'package:app_cake/screens/KhacTrung/root_app.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class dangnhap  extends StatefulWidget {
  const dangnhap ({ Key? key }) : super(key: key);

  @override
  _dangnhap createState() => _dangnhap();
}

// ignore: camel_case_types
class _dangnhap extends State<dangnhap > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: getAppBar(),
       body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text(
                    "ĐĂNG NHẬP"
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }

  getBody() {
    return Scaffold(
      body: Stack(
        children: [
          Column(
        children: [
         const  SizedBox(height: 51),
          Row(
          children: [
         const SizedBox( height: 80,width: 45,),
          Container(
            padding: const EdgeInsets.only(left: 10,top: 10,right: 20),
            width: 320,
            height: 105,
            decoration: BoxDecoration(
            border: Border.all(
            color: Colors.black)),
            child: Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.person_outline,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top : 0),
                      child: Text(
                        "TÊN ĐĂNG NHẬP",
                        style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18)
                      ),
                    ),
                  ],
                ),
          const Padding(
            padding: EdgeInsets.only(left: 10,top :3),
              child: TextField(
                
                  decoration: InputDecoration(
                    labelText: 'Nhập tên đăng nhập',
                  ),
                  ),
                ),

              ],
            ),
          ),  
        ],),
        const SizedBox(height: 20,),
        Container(
            padding: const EdgeInsets.only(left: 10,top: 10,right: 20),
            width: 320,
            height: 105,
            decoration: BoxDecoration(
            border: Border.all(
            color: Colors.grey)),
            child: Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.lock,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top : 0,left: 2),
                      child: Text(
                        "MẬT KHẨU",
                        style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18)
                      ),
                    ),
                  ],
                ),
            const TextField(
                obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Nhập mật khẩu',
                  ),
                  ),

              ],
            ),
          ),
          const SizedBox(height: 30,),
         Container(
           padding: const EdgeInsets.only(left:0),
           child: GestureDetector(
             onTap: () {
             Navigator.push(
             context,
             MaterialPageRoute(
             builder: (_) => const trangchinh(),),);
           },
           child: Container(
             width: 350,
           height: 50,
             color: Colors.black,
             // ignore: prefer_const_constructors
           child: Center(
             child: const Text(
                   "ĐĂNG NHẬP",
                   style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)
                 ),
           ),
           ),
           ),
         ),
          const SizedBox(height: 11,),
      Row(
          children: const[
            Padding(padding: EdgeInsets.only(left: 30,top: 15,),
            child: Text(
              "Đăng kí",style: TextStyle(fontSize: 16,color: Colors.blue, ),
            ),
            ),
            Padding(padding: EdgeInsets.only(left : 190,top: 15),
            child: Text(
              "Quên mật khẩu", style: TextStyle(fontSize: 16,color: Colors.blue ),
            ),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top:20,bottom: 5),
          child: const Center(
           child:  Text(
              "Hoặc đăng nhập nhanh với", style: TextStyle(fontSize: 16,color: Colors.black ),
            ),
        ),
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 40),
            child: GestureDetector(
             onTap: () {
             Navigator.push( 
             context,
             MaterialPageRoute(
             builder: (_) => const thanhtoan(),),);
           },
           child: Container(
             // ignore: prefer_const_constructors
           child: (
             Column(
               children: const [
                 Padding(padding: EdgeInsets.only(left:0, top: 20,bottom: 5),
                 child: Image(image: AssetImage("assets/icons/facebook.png"),width: 45,height: 45,),
                 ),
                 Text(
                   "FACEBOOK",
                   style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)
                 ),
               ],
             )
           )
           ),
           ),
            ),
            Padding(padding: EdgeInsets.only(left:60),
            child: GestureDetector(
             onTap: () {
             Navigator.push( 
             context,
             MaterialPageRoute(
             builder: (_) => const thanhtoan(),),);
           },
           child: Container(
             // ignore: prefer_const_constructors
           child: (
             Column(
               children: const [
                 Padding(padding: EdgeInsets.only(left:0, top: 15,),
                 child: Image(image: AssetImage("assets/icons/gmail.png"),width: 50,height: 50,),
                 ),
                 Text(
                   "GMAIL",
                   style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)
                 ),
               ],
             )
           ),
           
           ),
           ),
            ),
            Padding(padding: EdgeInsets.only(left:60),
            child: GestureDetector(
             onTap: () {
             Navigator.push( 
             context,
             MaterialPageRoute(
             builder: (_) => const thanhtoan(),),);
           },
           child: Container(
             // ignore: prefer_const_constructors
           child: (
             Column(
               children: const [
                 Padding(padding: EdgeInsets.only(left:0, top: 15),
                 child: Image(image: AssetImage("assets/icons/telegram.png"),width: 50,height: 50,),
                 ),
                 Text(
                   "TELEGRAM",
                   style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)
                 ),
               ],
             )
           ),
           
           ),
           ),
            )
          ],
        )
        ],
      ),
      
        ],
      )
    );
  }
}