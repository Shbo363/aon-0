

import 'package:aon_project_0/Screens/PhoneScreen.dart';
import 'package:aon_project_0/service/link.api.dart';
import 'package:aon_project_0/service/service.api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';
class RegisterController extends GetxController
{
  Crud api = Get.put(Crud());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void register(context)async{
    var body = await api.postRequest(
      LinkApi.register,
      {
        "name":nameController.text,
        "email":emailController.text,
        "password":passwordController.text,

      },
    );
    if(body["status"]==true)
    {
      gotoHome(context);
      sharedPreferences.setString("auth", body["data"]["token"]);
    }
    else {
print('hello');
    }
  }

  void gotoHome(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  PhoneScreen()),
    );
  }



}