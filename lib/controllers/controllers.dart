import 'dart:convert';

import 'package:app_cake/model/sanpham.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class controller extends GetxController{
  var sanphamlist = <sanpham>[].obs;
  var isloading = true.obs;

  @override
  void onInit(){
    super.onInit();
    fetchsanpham();
  }

  Future<void> fetchsanpham() async{
    final reponse = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));

    if(reponse.statusCode ==200){
      sanpham _sanpham  = sanpham.fromJson(jsonDecode(reponse.body));
      sanphamlist.add(sanpham(
        userId : _sanpham.userId,
        id : _sanpham.id,
        title : _sanpham.title,
        body : _sanpham.body,
      )
      );
      isloading.value == true;
    }else{
      Get.snackbar('Erro loading data', 'sever responded ${reponse.statusCode}:${reponse.reasonPhrase.toString()}');
    }
  } 
}