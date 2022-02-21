<<<<<<< HEAD

import 'package:app_cake/screens/QuangTrung/home/components/sanphambanchay.dart';
=======
>>>>>>> 2f4cc68a8c7cd0c5f98bf1a7e6ff18f7dd3babb3
import 'package:flutter/material.dart';
import 'package:app_cake/model/sanpham.dart';
import 'package:app_cake/repository/apiSanpham.dart';
import 'package:flutter/cupertino.dart';

class SanphamProvider with ChangeNotifier {
  List<sanpham> sanphamthongthuongs = [];

  List<sanpham> danhmucsanphamBKs = [];

  List<sanpham> danhmucsanphamBMTs = [];

  List<sanpham> danhmucsanphamBMs = [];

  List<sanpham> danhmucsanphamBNs = [];

   List<sanpham> sanphambanchays = [];
   

  bool loading = false;

  sanphamthongthuong(context) async {
    loading = true;

    sanphamthongthuongs = await getSanpham(context);
    loading = false;
    notifyListeners();
  }

  danhmucsanphamBK(context) async {
    loading = true;

    danhmucsanphamBKs = await getDMSanphamBK(context);
    loading = false;
    notifyListeners();
  }

  danhmucsanphamBMT(context) async {
    loading = true;

    danhmucsanphamBMTs = await getDMSanphamBMT(context);
    loading = false;
    notifyListeners();
  }

  danhmucsanphamBM(context) async {
    loading = true;

    danhmucsanphamBMs = await getDMSanphamBM(context);
    loading = false;
    notifyListeners();
  }

  danhmucsanphamBN(context) async {
    loading = true;

    danhmucsanphamBNs = await getDMSanphamBN(context);
    loading = false;
    notifyListeners();
<<<<<<< HEAD
  } 

  sanphambanchay(context) async{
    loading = true;

    sanphambanchays = await getSanphambanchay(context);
    loading = false;
    notifyListeners();
  } 


}
=======
  }
}
>>>>>>> 2f4cc68a8c7cd0c5f98bf1a7e6ff18f7dd3babb3
