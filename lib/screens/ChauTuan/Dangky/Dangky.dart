import 'package:app_cake/screens/ChauTuan/components/DangkyComponent/appbars.dart';
import 'package:app_cake/screens/ChauTuan/components/DangkyComponent/body.dart';
import 'package:flutter/material.dart';
import 'package:app_cake/AppColors/app_colors.dart';

class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenSate createState() => RegisterScreenSate();
}

class RegisterScreenSate extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseGrey10Color,
      appBar: buildAppBar(context), //Header trang Register
      body: Body(), //Body trang Register
    );
  }
}
