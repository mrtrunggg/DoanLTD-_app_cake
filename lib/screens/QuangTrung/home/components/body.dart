
import 'package:app_cake/model/sanpham.dart';
import 'package:app_cake/screens/QuangTrung/home/components/banner.dart';
import 'package:app_cake/screens/QuangTrung/home/components/category.dart';
import 'package:app_cake/screens/QuangTrung/home/components/sanphambanchay.dart';
import 'package:app_cake/screens/QuangTrung/home/components/sanphammoi.dart';
import 'package:app_cake/screens/QuangTrung/home/components/sanphamnoibat.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../../../constrants.dart';

import 'package:http/http.dart' as http;





class bodyHome extends StatefulWidget {
  bodyHome({Key? key}) : super(key: key);

  

  State<StatefulWidget> createState() => bodyHomeState();
}

class bodyHomeState extends State<bodyHome>{
  

@override
void initState() {
  super.initState();
  
}

  @override
  Widget build(BuildContext context) {



    return ListView(

      children: <Widget> [
        SizedBox(height: kDefaultPaddin/2,),
        //Day la banner

        banner(),      
        SizedBox(height: kDefaultPaddin/2,),
        // Day la Danh muc san pham
        category(),
        // Sản phẩm mới
        SizedBox(height: kDefaultPaddin/2,),



        Container(     
        color: Colors.brown.shade100,
        child: Padding(            
          padding: EdgeInsets.only(top: kDefaultPaddin/2, left: kDefaultPaddin),
          child: Text("SẢN PHẨM MỚI",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20,
              ),
            ),
          ),      
        ),
        SizedBox(height: kDefaultPaddin/2,),
        sanphammoi(),
        // SizedBox(height: kDefaultPaddin/2,),
        // sanPhamNoiBat(),
        // SizedBox(height: kDefaultPaddin/2,),
        // sanPhamBanChay(),
        // SizedBox(height: kDefaultPaddin/2,),

    
      ]
    );
  }
}
     
  
// class MyHomePageproduct extends StatelessWidget {
//   const MyHomePageproduct({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: FutureBuilder<List<sanpham>>(
//         future: fetchsanpham(http.Client()),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return const Center(
//               child: Text('An error has occurred!'),
//             );
//           } else if (snapshot.hasData) {
//             return sanphamList(sanphams: snapshot.data!);
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// class sanphamList extends StatelessWidget {
//   const sanphamList({Key? key, required this.sanphams}) : super(key: key);

//   final List<sanpham> sanphams;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemCount: sanphams.length,
//       itemBuilder: (context, index) {
//         return Text(sanphams[index].mota);
//       },
//     );
//   }
// }