import 'package:app_cake/screens/ChauTuan/Donhang/constrant.dart';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Daxuly extends StatefulWidget {
  const Daxuly({Key? key}) : super(key: key);

  @override
  _Daxuly createState() => _Daxuly();
}

// ignore: camel_case_types
class _Daxuly extends State<Daxuly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: getBody(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      title: Text('Đã xử lý'),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.check,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
  }

  getBody() {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 600,
          child: ListView(
            children: [
              Column(
                children: List.generate(cartList.length, (index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 225,
                        color: Colors.green.withOpacity(0.1),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 20),
                                  child: Image.asset(
                                    ("assets/images/${cartList[index]['img']}"),
                                    height: 130,
                                    width: 135,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 0),
                                      width: 100,
                                      height: 30,
                                      color: Colors.white,
                                      alignment: Alignment.center,
                                      child: Text(cartList[index]['price'],
                                          style: TextStyle(fontSize: 15)),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 43,
                                  width: 220,
                                  child: Text(cartList[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.5,
                                          color: Color(0xFFFF000000))),
                                  child: Container(
                                    width: 100,
                                    height: 30,
                                    alignment: Alignment.center,
                                    color: Colors.white.withOpacity(0.8),
                                    child: Text('Chờ giao hàng',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("Số lượng",
                                    style: TextStyle(fontSize: 15)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          border: Border(
                                        top: BorderSide(
                                            width: 1.5,
                                            color: Color(0xFFFF000000)),
                                        bottom: BorderSide(
                                            width: 1.5,
                                            color: Color(0xFFFF000000)),
                                      )),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        alignment: Alignment.center,
                                        color: Colors.white.withOpacity(0.8),
                                        child: Text("5",
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
