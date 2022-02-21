import 'package:app_cake/AppColors/app_colors.dart';
import 'package:app_cake/screens/KhacTrung/home_login.dart';
import 'package:app_cake/screens/KhacTrung/root_app.dart';
import 'package:flutter/material.dart';
import 'package:app_cake/AppColors/app_colors.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text(
      "Đăng ký",
      style: TextStyle(
          color: AppColors.baseBlackColor,
          fontWeight: FontWeight.bold,
          fontSize: 30.0),
    ),
    backgroundColor: AppColors.baseGrey10Color,
    elevation: 0,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => dangnhap()),
            );
          },
          child: Text(
            'Đăng nhập',
            style: TextStyle(color: AppColors.baseBlackColor),
          ),
        ),
      )
    ],
  );
}
