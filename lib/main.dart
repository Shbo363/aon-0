
import 'package:aon_project_0/RegisterScreen.dart';
import 'package:aon_project_0/VerifyPhone.dart';
import 'package:aon_project_0/startscreen.dart';
import 'package:aon_project_0/PhoneScreen.dart';
import 'package:aon_project_0/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {

  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}


