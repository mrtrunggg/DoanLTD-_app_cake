
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'global.dart';
import 'dart:core';


class sanpham {
  int userId;
  int id;
  String title;
  String body;

  sanpham({required this.userId,required this.id,required this.title,required this.body});

  factory sanpham.fromJson(Map<String, dynamic> json) {
    return sanpham(
    userId : json['userId'],
    id : json['id'],
    title : json['title'],
    body : json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}







/*class sanpham {
  int idSanPham;
  String tenSanPham;
  String dongiaSanPham;
  String soluongSanPham;
  String motaSanPham;
  String kichthuocSanPham;
  String hinhanhSanPham;
  Null createdAt;
  Null updatedAt;

  sanpham(
      {
      required this.idSanPham,
      required this.tenSanPham,
      required this.dongiaSanPham,
      required this.soluongSanPham,
      required this.motaSanPham,
      required this.kichthuocSanPham,
      required this.hinhanhSanPham,
      required this.createdAt,
      required this.updatedAt
      }
  );

  factory sanpham.fromJson(Map<String, dynamic> json){
    return sanpham(
    idSanPham : json['id_sanPham'],
    tenSanPham : json['ten_sanPham'],
    dongiaSanPham : json['dongia_sanPham'],
    soluongSanPham : json['soluong_sanPham'],
    motaSanPham : json['mota_sanPham'],
    kichthuocSanPham : json['kichthuoc_sanPham'],
    hinhanhSanPham : json['hinhanh_sanPham'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_sanPham'] = this.idSanPham;
    data['ten_sanPham'] = this.tenSanPham;
    data['dongia_sanPham'] = this.dongiaSanPham;
    data['soluong_sanPham'] = this.soluongSanPham;
    data['mota_sanPham'] = this.motaSanPham;
    data['kichthuoc_sanPham'] = this.kichthuocSanPham;
    data['hinhanh_sanPham'] = this.hinhanhSanPham;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }

}*/


  


