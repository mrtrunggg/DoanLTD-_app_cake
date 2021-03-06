
import 'package:app_cake/providers/sanphamprovider.dart';
import 'package:app_cake/screens/QuangTrung/CTSP/manhinh_ctsp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../constrants.dart';


class sanphamdanhmucbn extends StatefulWidget {
  const sanphamdanhmucbn({
    Key? key,
  }) : super(key: key);

  @override
  State<sanphamdanhmucbn> createState() => _sanphamdanhmucbnState();
}

class _sanphamdanhmucbnState extends State<sanphamdanhmucbn> {

  @override
  void initState() {
    super.initState();
    final sanphams = Provider.of<SanphamProvider>(context, listen: false);
    sanphams.danhmucsanphamBN(context);
  }

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<SanphamProvider>(
          builder: (context, state, child){
            return Container(
              
              padding: EdgeInsets.all(5.5),
              
              height: 500,
              child: ListView.builder(
                itemCount: state.danhmucsanphamBNs.length,
                //scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  return dmspshow(
                    hinhanh: state.danhmucsanphamBNs[index].hinhanh,
                    sanphamName: state.danhmucsanphamBNs[index].sanphamName,
                    dongia: state.danhmucsanphamBNs[index].dongia,
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

class dmspshow extends StatelessWidget {
  final String hinhanh;
  final String sanphamName;
  final int dongia;

  const dmspshow({
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
      
          
          child: Row(        
           children: <Widget> [
             //SizedBox(width: kDefaultPaddin/4,),
             Container(
               width: 400,
              //padding: EdgeInsets.all(kDefaultPaddin/3),
                color: Colors.brown.shade100,   
             child: Column(                  
               children: <Widget> [

                 Row(
                   children: [
                     Image.asset("assets/images/$hinhanh",
                       width: 200,
                       height: 150,
                     ),
                     SizedBox(width: kDefaultPaddin/4,),
                     Column(
                       children: [
                         Text(sanphamName,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                         SizedBox(height: kDefaultPaddin/3,),
                         Text("Gi?? ti???n: $dongia??",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),               
                         SizedBox(height:kDefaultPaddin/2),
                       ],
                     ),
                   ],
                 ),

                Row(  

                  children: <Widget>[
                     SizedBox(width: kDefaultPaddin,),
                     OutlinedButton(onPressed: () {
                       Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const manhinhctsp()),
                       );
                     },
                       child: Text("Mua ngay",
                       style: TextStyle(fontWeight: FontWeight.bold),
                       ),
                       style: OutlinedButton.styleFrom(
                       minimumSize: Size(170, 40),
                       primary: Colors.black,
                       side: BorderSide(color: Colors.black),
                       )
                     ),
                     SizedBox(width: kDefaultPaddin/2,),
                     OutlinedButton(onPressed: () {},
                       child: Text("L??u",
                       style: TextStyle(fontWeight: FontWeight.bold),
                       ),
                       style: OutlinedButton.styleFrom(
                       minimumSize: Size(170, 40),
                       primary: Colors.black,
                       side: BorderSide(color: Colors.black),
                       )
                     ),
                   ],
                 ),

                 
               ],                 
             ),
          
          ),
        

            
              
             SizedBox(height: 210,)
           ],         
         ),

      

     );
  }
 
}
     
  

  

