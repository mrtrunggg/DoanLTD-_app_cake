import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:app_cake/model/sanpham.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<List<sanpham>> getSanpham(context) async {
  List<sanpham> sanphams = [];

  try{
    final response = await http.get(
      Uri.parse('http://10.0.2.2:8000/api/sanpham'),
      headers: {
        HttpHeaders.contentTypeHeader:"application/json",
      },
    );
    if(response.statusCode==200){

      final item = json.decode(response.body);
      sanphams=(item as List).map((prod)=>sanpham.fromJson(prod)).toList();
      
    }
  }catch(e){
    rethrow;
  }
  return sanphams;
}


Future<List<sanpham>> getDMSanphamBK(context) async {
  List<sanpham> sanphams = [];

  try{
    final response = await http.get(
      Uri.parse('http://10.0.2.2:8000/api/DSSPBK'),
      headers: {
        HttpHeaders.contentTypeHeader:"application/json",
      },
    );
    if(response.statusCode==200){

      final item = json.decode(response.body);
      sanphams=(item as List).map((prod)=>sanpham.fromJson(prod)).toList();
      
    }
  }catch(e){
    rethrow;
  }
  return sanphams;
}

Future<List<sanpham>> getDMSanphamBMT(context) async {
  List<sanpham> sanphams = [];

  try{
    final response = await http.get(
      Uri.parse('http://10.0.2.2:8000/api/DSSPBMT'),
      headers: {
        HttpHeaders.contentTypeHeader:"application/json",
      },
    );
    if(response.statusCode==200){

      final item = json.decode(response.body);
      sanphams=(item as List).map((prod)=>sanpham.fromJson(prod)).toList();
      
    }
  }catch(e){
    rethrow;
  }
  return sanphams;
}

Future<List<sanpham>> getDMSanphamBM(context) async {
  List<sanpham> sanphams = [];

  try{
    final response = await http.get(
      Uri.parse('http://10.0.2.2:8000/api/DSSPBM'),
      headers: {
        HttpHeaders.contentTypeHeader:"application/json",
      },
    );
    if(response.statusCode==200){

      final item = json.decode(response.body);
      sanphams=(item as List).map((prod)=>sanpham.fromJson(prod)).toList();
      
    }
  }catch(e){
    rethrow;
  }
  return sanphams;
}

Future<List<sanpham>> getDMSanphamBN(context) async {
  List<sanpham> sanphams = [];

  try{
    final response = await http.get(
      Uri.parse('http://10.0.2.2:8000/api/DSSPBMNgot'),
      headers: {
        HttpHeaders.contentTypeHeader:"application/json",
      },
    );
    if(response.statusCode==200){

      final item = json.decode(response.body);
      sanphams=(item as List).map((prod)=>sanpham.fromJson(prod)).toList();
      
    }
  }catch(e){
    rethrow;
  }
  return sanphams;
}

Future<List<sanpham>> getSanphambanchay(context) async {
  List<sanpham> sanphams = [];

  try{
    final response = await http.get(
      Uri.parse('http://10.0.2.2:8000/api/sanphambanchay'),
      headers: {
        HttpHeaders.contentTypeHeader:"application/json",
      },
    );
    if(response.statusCode==200){

      final item = json.decode(response.body);
      sanphams=(item as List).map((prod)=>sanpham.fromJson(prod)).toList();
      
    }
  }catch(e){
    rethrow;
  }
  return sanphams;
}