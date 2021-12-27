import 'package:flutter/material.dart';
class phuongthucvanchuyen  extends StatefulWidget {
  const phuongthucvanchuyen ({ Key? key }) : super(key: key);

  @override
  _phuongthucvanchuyen createState() => _phuongthucvanchuyen ();
}

class _phuongthucvanchuyen  extends State<phuongthucvanchuyen > {
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
                    "PHƯƠNG THỨC VẬN CHUYỂN"
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }

  getBody() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 0),
              height: 90,
              color: Colors.grey.withOpacity(0.2),
              child: Column(
                children: const [
                  Padding(padding:EdgeInsets.only(left: 0, right: 150,top:15),
                    child: Text(
                      "Các phương thức vận chuyển của 3T.",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                    ),
                  Padding(padding:EdgeInsets.only(left: 10,top:7),
                    child: Text(
                      "Bạn có thể theo dõi đơn hàng trên ứng dụng 3T khi chọn một trong các đơn vị vận chuyển..",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}