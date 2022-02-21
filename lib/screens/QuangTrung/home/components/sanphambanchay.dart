
import 'package:app_cake/providers/sanphamprovider.dart';
import 'package:app_cake/screens/QuangTrung/CTSP/manhinh_ctsp.dart';

import 'package:app_cake/screens/QuangTrung/trangloaisanphamBK/manhinh_trangloaisanpham.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../constrants.dart';




class sanphambanchay extends StatefulWidget {
  sanphambanchay({Key? key}) : super(key: key);

  @override
  State<sanphambanchay> createState() => _sanphambanchayState();
}

class _sanphambanchayState extends State<sanphambanchay> {

  @override
  void initState() {
    super.initState();
    final sanphams = Provider.of<SanphamProvider>(context, listen: false);
    sanphams.sanphambanchay(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<SanphamProvider>(
          builder: (context, state, child){
            return Container(
              padding: EdgeInsets.only(left: 20),
              height: 200,
              child: ListView.builder(
                itemCount: state.sanphambanchays.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  return sanphamthongthuongshow(
                    hinhanh: state.sanphambanchays[index].hinhanh,
                    sanphamName: state.sanphambanchays[index].sanphamName,
                    dongia: state.sanphambanchays[index].dongia,
                  );
                }
              ),
            );
          }
        )
      ],
    );
  }
}


class sanphamthongthuongshow extends StatelessWidget {
  final String hinhanh;
  final String sanphamName;
  final int dongia;

  const sanphamthongthuongshow({
      Key? key,
      required this.hinhanh,
      required this.sanphamName,
      required this.dongia,
  }): super(key: key);
  

    @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap:() {
            Navigator.push(
             context,
             MaterialPageRoute(
             builder: (_) => const manhinhctsp(),),);
    },

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 170,),
        Row(
          children: <Widget> [          
            Column(                  
              children: <Widget> [  
                
                Container(
                  child: Image.asset("assets/images/$hinhanh",
                  width: 150,
                  height: 150,
                  ), 
                ),            
                                 
                Text(sanphamName),
                Text(dongia.toString()),
              ],                 
            )
          ],         
        ),
        
    ]
    )
    );
  }
}







  
