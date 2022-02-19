import 'package:app_cake/screens/KhacTrung/constrant.dart';
import 'package:flutter/material.dart';

class trangyeuthich  extends StatefulWidget {
  const trangyeuthich ({ Key? key }) : super(key: key);

  @override
  _trangyeuthich  createState() => _trangyeuthich();
}

class _trangyeuthich extends State<trangyeuthich > {
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
                    "DANH SÁCH YÊU THÍCH"
                  ),
                ),
            GestureDetector(
              onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (_) => const trangyeuthich(),),);
            },
            // ignore: prefer_const_constructors
            child: Padding(
              padding:const EdgeInsets.all(15),
              child: const Icon(  
                  Icons.account_circle,
                  color: Colors.white,
                  size: 30.0,
                ),
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
      body: ListView(
              children: [
            SizedBox(
            height: 40,
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
                child: Text("2 sản phẩm yêu thích",style: TextStyle( fontSize: 15,fontWeight: FontWeight.bold)
              ),
              ),
              ],
            ),
            ),
          ),
            Column(
              children: List.generate(cartList.length, (index){
                return Column(
                  children: [
                    const SizedBox( height: 10,),
                    Container(
                      padding: EdgeInsets.only(top:5),
                      height: 255,
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
                              const SizedBox(height: 11,),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.5, color: Color(0xFFFF000000))
                                ),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  alignment: Alignment.center,
                                  color: Colors.white.withOpacity(0.8),
                                  child: Row(
                                    children: [
                                      const SizedBox( width: 10,),
                                      Text("THÊM VÀO GIỎ HÀNG",style: TextStyle( fontSize: 14,fontWeight: FontWeight.bold)),
                                      const SizedBox( width: 10,),
                                      Icon(Icons.local_grocery_store)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                           
                        ],
                      ),
                    ),
                  ],
                  
                );
              }
            ),
            ),
            SizedBox(
            height: 40,
            width: 430,
            child: Container(
              padding: EdgeInsets.only(left: 20,top: 10),
              color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                padding: EdgeInsets.only(top:4,bottom: 5),
                child: Text("CÓ THỂ BẠN CŨNG THÍCH",style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold)
              ),
              ),
              ],
            ),
            ),
          ),
          Column(
              children: List.generate(cartList.length, (index){
                return Column(
                  children: [
                    const SizedBox( height: 10,),
                    Container(
                      padding: EdgeInsets.only(top:5),
                      height: 255,
                      color: Colors.green.withOpacity(0.1),
                      child: Column(
                        children: [
                         Row(
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
                              ),
                              
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
                        const SizedBox( height: 10,),
                        Row(
                          children: [
                             const SizedBox( width: 30,),
                            Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.5, color: Color(0xFFFF000000))
                                ),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  alignment: Alignment.center,
                                  color: Colors.white.withOpacity(0.8),
                                  child: Row(
                                    children: [
                                      const SizedBox( width: 10,),
                                      Text("THÊM VÀO GIỎ HÀNG",style: TextStyle( fontSize: 14,fontWeight: FontWeight.bold)),
                                      const SizedBox( width: 10,),
                                      Icon(Icons.local_grocery_store)
                                    ],
                                  ),
                                ),
                              ),
                               const SizedBox( width: 50,),
                              Container(
                                width: 90,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.5, color: Color(0xFFFF000000))
                                ),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  alignment: Alignment.center,
                                  color: Colors.white.withOpacity(0.8),
                                  child: Row(
                                    children: [
                                      const SizedBox( width: 10,),
                                      Text("LƯU",style: TextStyle( fontSize: 14,fontWeight: FontWeight.bold)),
                                      const SizedBox( width: 10,),
                                      Icon(Icons.favorite_border)
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        )
                        ],
                      )
                    
                    ),
                    
                  ],
                  
                );
              }
            ),
            ),
          ],
          ),
    );
  }
}