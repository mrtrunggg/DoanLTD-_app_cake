import 'package:app_cake/screens/KhacTrung/home_pay.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class thongbao  extends StatefulWidget {
  const thongbao ({ Key? key }) : super(key: key);

  @override
  _thongbao createState() => _thongbao();
}

// ignore: camel_case_types
class _thongbao extends State<thongbao > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  getBody() {
    return Scaffold(
      body: Container(
        color: Colors.grey.withOpacity(0.1),
        child: Column(
          children: [
            const SizedBox(height: 5,),
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
                  height: 80,
                  color: Colors.white,
                  // ignore: prefer_const_constructors
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icon1.PNG",width: 90,height: 70,),
                      Container(
                        width: 270,
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Khuyến Mại", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text("UP TO 50% OFF>>", style: TextStyle( fontSize: 17,color: Colors.grey),)
                          ],
                        ),
                      ),
                      const SizedBox(width: 0,),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 1),
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (_) => const thanhtoan(),),);
                },
                child: Container(
                  height: 80,
                  color: Colors.white,
                  // ignore: prefer_const_constructors
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icon2.PNG",width: 90,height: 70,),
                      Container(
                        width: 270,
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Theo dõi đơn hàng", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text("Không có tin tức mới nhất", style: TextStyle( fontSize: 17,color: Colors.grey),)
                          ],
                        ),
                      ),
                      const SizedBox(width: 0,),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 1),
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (_) => const thanhtoan(),),);
                },
                child: Container(
                  height: 80,
                  color: Colors.white,
                  // ignore: prefer_const_constructors
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icon3.PNG",width: 90,height: 70,),
                      Container(
                        width: 270,
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Tin nhắn hệ thống", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text("Bạn có 1 mã giảm giá...", style: TextStyle( fontSize: 17,color: Colors.grey),)
                          ],
                        ),
                      ),
                      const SizedBox(width: 0,),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 1),
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (_) => const thanhtoan(),),);
                },
                child: Container(
                  height: 80,
                  color: Colors.white,
                  // ignore: prefer_const_constructors
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icon4.PNG",width: 90,height: 70,),
                      Container(
                        width: 270,
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Cộng đồng", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text("Tin nhắn mới từ shop", style: TextStyle( fontSize: 17,color: Colors.grey),)
                          ],
                        ),
                      ),
                      const SizedBox(width: 0,),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 1),
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (_) => const thanhtoan(),),);
                },
                child: Container(
                  height: 80,
                  color: Colors.white,
                  // ignore: prefer_const_constructors
                  child: Row(
                    children: [
                      Image.asset("assets/icons/icon5.PNG",width: 90,height: 70,),
                      Container(
                        width: 270,
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                            Text("Cập nhật ví", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text("Liên kết tài khoản ngay", style: TextStyle( fontSize: 17,color: Colors.grey),)
                          ],
                        ),
                      ),
                      const SizedBox(width: 0,),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}