import 'package:app_cake/screens/KhacTrung/constrant.dart';
import 'package:app_cake/screens/KhacTrung/home_login.dart';
import 'package:app_cake/screens/KhacTrung/home_pay/vanchuyen.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class thanhtoan  extends StatefulWidget {
  const thanhtoan ({ Key? key }) : super(key: key);

  @override
  _thanhtoan createState() => _thanhtoan();
}

// ignore: camel_case_types
class _thanhtoan extends State<thanhtoan > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }
  getBody() {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top : 0,left: 10),
                  child: Icon(
                    Icons.location_on,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top : 0),
                  child: Text(
                    "Địa chỉ nhận hàng",
                    style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18)
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
              child:  TextField(
                obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Chọn địa chỉ nhận hàng của bạn..',
                  ),
                  ),
                ),
            Divider(color: Colors.black.withOpacity(0.8),),
          Padding(padding: const EdgeInsets.only(left: 30),
          child: Row(children: List.generate(cartList.length, (index){
            return Row(children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Hero(
                tag: cake[index].imageUrl,
                child: Image(
                  height: 110,
                  width: 110,
                  image: AssetImage(
                    'assets/images/banh$index.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              )
            ]
            );
          },
          )
          )
          ),
          const SizedBox(height: 30,),
          Container(padding: const EdgeInsets.only(left: 20,right: 35),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "VẬN CHUYỂN", style: TextStyle(fontSize: 15,color: Colors.grey),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(left : 50),
                    child: GestureDetector(
                      onTap: () {
                      Navigator.push( 
                      context,
                      MaterialPageRoute(
                      builder: (_) => const phuongthucvanchuyen(),),);
                    },
                    child: Text(
                      "Chọn phương thức vận chuyển", style: TextStyle(fontSize: 15,color: Colors.blue ),
                    ),
                      ),
                  ),
                ],
              ),
            const SizedBox(height: 10,),
           Divider(color: Colors.black.withOpacity(0.8),),
           Row(
                children: const[
                  Padding(padding: EdgeInsets.only(left: 5,top: 13),
                  child: Text(
                    "MÃ KHUYẾN MẠI", style: TextStyle(fontSize: 15,color: Colors.grey),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(left : 110,top: 15),
                  child: Text(
                    "Chọn khuyến mại", style: TextStyle(fontSize: 15,color: Colors.blue ),
                  ),
                  )
                ],
              ),
              const SizedBox(height: 11,),
           Divider(color: Colors.black.withOpacity(1),),
              Row(
                children: const[
                  Padding(padding: EdgeInsets.only(left: 5,top: 13),
                  child: Text(
                    "PHƯƠNG THỨC THANH TOÁN", style: TextStyle(fontSize: 15,color: Colors.grey),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20,top: 13),
                  child: Text(
                    "Chọn phương thức", style: TextStyle(fontSize: 15,color: Colors.blue ),
                  ),
                  ),
                ],
              ),
               const SizedBox(height: 11,),
           const Divider(color: Colors.grey,),
           Row(
                children: const[
                  Padding(padding: EdgeInsets.only(left: 5,top: 13),
                  child: Text(
                    "TỔNG", style: TextStyle(fontSize: 15,color: Colors.grey),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 230,top: 13),
                  child: Text(
                    "đ118.000", style: TextStyle(fontSize: 15,color: Colors.black ),
                  ),
                  ),
                ],
              ),
            const SizedBox(height: 10,),
           const Divider(color: Colors.grey,),
           const Text("Nhấn Đặt hàng đồng nghĩa với việc bạn đồng ý tuân theo Điều khoản và Chính sách bảo mật"),
            const SizedBox(height: 14,),
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
                   "ĐẶT HÀNG",
                   style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)
                 ),
           ),
           ),
           ),
         ),
            ],
            
          ),
          )
          
        ],
      ),
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
                    "THANH TOÁN"
                  ),
                ),
            GestureDetector(
              onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (_) => const dangnhap(),),);
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
  int activeTab = 0;
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