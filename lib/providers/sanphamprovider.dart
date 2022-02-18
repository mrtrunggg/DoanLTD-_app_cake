
import 'package:flutter/material.dart';
import 'package:app_cake/model/sanpham.dart';
import 'package:app_cake/repository/apiSanpham.dart';
import 'package:flutter/cupertino.dart';

class SanphamProvider with ChangeNotifier{

   List<sanpham> sanphamthongthuongs = [];

   List<sanpham> danhmucsanphamBKs = []; 

   List<sanpham> danhmucsanphamBMTs = [];

   List<sanpham> danhmucsanphamBMs = [];

   List<sanpham> danhmucsanphamBNs = [];

  bool loading = false;

  sanphamthongthuong(context) async{
    loading = true;

    sanphamthongthuongs = await getSanpham(context);
    loading = false;
    notifyListeners();
  } 


  danhmucsanphamBK(context) async{
    loading = true;

    danhmucsanphamBKs = await getDMSanphamBK(context);
    loading = false;
    notifyListeners();
  } 

danhmucsanphamBMT(context) async{
    loading = true;

    danhmucsanphamBMTs = await getDMSanphamBMT(context);
    loading = false;
    notifyListeners();
  } 

danhmucsanphamBM(context) async{
    loading = true;

    danhmucsanphamBMs = await getDMSanphamBM(context);
    loading = false;
    notifyListeners();
  } 

danhmucsanphamBN(context) async{
    loading = true;

    danhmucsanphamBNs = await getDMSanphamBN(context);
    loading = false;
    notifyListeners();
  } 

}