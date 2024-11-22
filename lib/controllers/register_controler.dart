import 'package:aon_project_0/Screens/PhoneScreen.dart';
import 'package:aon_project_0/service/link.api.dart';
import 'package:aon_project_0/service/service.api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';

class RegisterController extends GetxController {

  Api api = Get.put(Api());


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void register(BuildContext context) async {
    // Preparing the request body
    var body = await api.postRequest(
      LinkApi.register,
      {
        "name": nameController.text,
        "email": emailController.text,
        "password": passwordController.text,
      },
    );


    if (body["status"] == true) {
      gotoHome(context);
      sharedPreferences.setString("auth", body["data"]["token"]);
    } else {
      print('Registration failed: ${body["message"]}');
    }
  }


  void gotoHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PhoneScreen()),
    );
  }
}