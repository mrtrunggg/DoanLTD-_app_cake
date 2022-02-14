import 'package:app_cake/screens/KhacTrung/constrant.dart';
import 'package:app_cake/screens/KhacTrung/home_pay.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class cart  extends StatefulWidget {
  const cart ({ Key? key }) : super(key: key);

  @override
  _cart  createState() => _cart();
}

// ignore: camel_case_types
class _cart extends State<cart > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

   getBody()
  {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: 430,
            child: Container(
              padding: EdgeInsets.only(left: 20,top: 10),
              color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(Icons.check_box),
                SizedBox(width: 10,),
                Padding(
                padding: EdgeInsets.only(top:4),
                child: Text("3 mặt hàng",style: TextStyle( fontSize: 15)
              ),
              ),
              ],
            ),
            ),
          ),
          Container(
            height: 380,
            child:ListView(
              children: [
            Column(
              children: List.generate(cartList.length, (index){
                return Column(
                  children: [
                    const SizedBox( height: 10,),
                    Container(
                      padding: EdgeInsets.only(top:5),
                      height: 225,
                      color: Colors.green.withOpacity(0.1),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:20,top: 10),
                                child: Icon(Icons.check_box),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10,left: 20),
                                child: Image.asset(
                                  ("assets/images/${cartList[index]['img']}"),
                                  height: 130,
                                  width: 135,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 15,),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top:0),
                                    width: 100,
                                    height: 30,
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(cartList[index]['price'],
                                    style: TextStyle( fontSize: 15)),
                                    ),
                                    const SizedBox(width: 20,),
                                  Container(
                                    padding: EdgeInsets.only(left:70),
                                    child: Icon(Icons.delete),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Container(padding: EdgeInsets.only(left: 0,right: 0),
                              height: 43,
                              width: 220,
                                child: Text(
                                  cartList[index]['name'],
                                  style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18)
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text( "Kích cỡ",style: TextStyle( fontSize: 15)),
                              const SizedBox(height: 5,),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.5, color: Color(0xFFFF000000))
                                ),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  alignment: Alignment.center,
                                  color: Colors.white.withOpacity(0.8),
                                  child: Text(cartList[index]['size'],style: TextStyle( fontSize: 15)),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text("Số lượng",style: TextStyle( fontSize: 15)),
                              const SizedBox(height: 5,),
                              Row(children: [
                                const SizedBox(width: 25,),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                  border: Border.all(width: 1.5, color: Color(0xFFFF000000))
                                ),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  color: Colors.white.withOpacity(0.8),
                                  child: Text("-",style: TextStyle( fontSize: 20)),
                                ),
                                ),
                                Container(
                                  width: 50,
                                  height: 30,
                                  decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.5, color:Color(0xFFFF000000)),
                                    bottom: BorderSide(width: 1.5, color: Color(0xFFFF000000)),
                                  )
                                ),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  color: Colors.white.withOpacity(0.8),
                                  child: Text("1",style: TextStyle( fontSize: 20)),
                                ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                  border: Border.all(width: 1.5, color: Color(0xFFFF000000))
                                ),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  color: Colors.white.withOpacity(0.8),
                                  child: Text("+",style: TextStyle( fontSize: 20)),
                                ),
                                ),
                              ],),
                            ],
                          ), 
                        ],
                      ),
                    )
                  ],
                );
              }
            ),
            ),
            
          ],
            ),
          ),
          Container(
            child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30,top:10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "TỔNG CỘNG",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "đ118.000",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
           padding: const EdgeInsets.only(left:0),
           child: GestureDetector(
             onTap: () {
             Navigator.push(
             context,
             MaterialPageRoute(
             builder: (_) => const thanhtoan(),),);
           },
           child: Container(
             width: 350,
           height: 50,
             color: Colors.black,
             // ignore: prefer_const_constructors
           child: Center(
             child: const Text(
                   "THANH TOÁN",
                   style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)
                 ),
           ),
           ),
           ),
         ),
              const SizedBox(
          height: 10,
        ),
        ],
      ),
          )
        ],
      )
    );
  }

}